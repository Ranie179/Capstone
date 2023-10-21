from flask import Flask, request, jsonify
from flask_cors import CORS
import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import MinMaxScaler
from keras.models import load_model
from itertools import permutations
import csv
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity

app = Flask(__name__)
CORS(app)

loaded_model = load_model('medical.h5')

data = pd.read_csv('medical_data.csv')

Symptom_1_map = data['symptom_1'].value_counts().to_dict()
Symptom_2_map = data['symptom_2'].value_counts().to_dict()
Symptom_3_map = data['symptom_3'].value_counts().to_dict()
Symptom_4_map = data['symptom_4'].value_counts().to_dict()

data['symptom_1'] = data['symptom_1'].map(Symptom_1_map)
data['symptom_2'] = data['symptom_2'].map(Symptom_2_map)
data['symptom_3'] = data['symptom_3'].map(Symptom_3_map)
data['symptom_4'] = data['symptom_4'].map(Symptom_4_map)

d = {}
for i, j in zip(data['disease'].unique(), range(len(data['disease'].unique()))):
    d[i] = j

data['disease'] = data['disease'].map(d)

x = data.iloc[:, 1:]
y = data.iloc[:, :1]

x_train, x_test, y_train, y_test = train_test_split(x, y, random_state=72, test_size=0.10, stratify=y)

scale_test = MinMaxScaler()
scale_train = MinMaxScaler()

test = MinMaxScaler()
test_model = test.fit_transform(x)
x_train_scaled = scale_train.fit_transform(x_train)
x_test_scaled = scale_test.fit_transform(x_test)

def getDescription(target_disease):
    result = ""
    with open("Disease_Description.csv", 'r', newline='', encoding='utf-8') as file:
        reader = csv.reader(file)
        next(reader)  # Bỏ qua dòng đầu tiên chứa tiêu đề

        for row in reader:
            disease, description = row
            if disease.lower() == target_disease.lower():
                result = description
                break

    return result

def getPrecaution(disease):
    result = ""
    
    with open("Disease_Precaution.csv", 'r', newline='', encoding='utf-8') as file:
        reader = csv.reader(file)
        next(reader)  # Bỏ qua hàng đầu tiên (tiêu đề)

        for row in reader:
            if row[0].lower() == disease.lower():
                precautions = row[1:]  # Lấy các phần tử từ cột 1 trở đi
                for i, precaution in enumerate(precautions, 1):
                    result += f"{i}) {precaution}<br>"  # Sử dụng phép cộng để gắn kết chuỗi kết quả
                break

    return result

import re

def getSymptom(disease_input):
    symptoms_df = pd.read_csv('symptoms.csv')
    
    corpus = symptoms_df['symptom'].tolist()

    # Tách chuỗi thành danh sách các triệu chứng
    symptoms = re.split(r',|và', disease_input)
    symptoms = [symptom.strip() for symptom in symptoms]

    vectorizer = TfidfVectorizer()
    tfidf_matrix = vectorizer.fit_transform(corpus + symptoms)

    user_input_tfidf = tfidf_matrix[-len(symptoms):]
    corpus_tfidf = tfidf_matrix[:-len(symptoms)]
    similarity_matrix = cosine_similarity(user_input_tfidf, corpus_tfidf)

    similar_symptoms = []
    for i, symptom in enumerate(symptoms):
        most_similar_index = similarity_matrix[i].argmax()
        most_similar_symptom = symptoms_df.loc[most_similar_index, 'symptom']
        similar_symptoms.append(most_similar_symptom)
    
    return similar_symptoms


@app.route('/chat', methods=['POST'])
def chat():
    user_input = request.json['user_input']
    response = chatbot(user_input)
    return jsonify({'response': response})


def chatbot(user_input):
    symptoms = getSymptom(user_input)

    if symptoms:
        done_predicting = False

        while not done_predicting:
            response = ""

            if len(symptoms) >= 4:
                symptoms_encoded = [Symptom_1_map.get(symptoms[0], 0), Symptom_2_map.get(symptoms[1], 0),
                                    Symptom_3_map.get(symptoms[2], 0), Symptom_4_map.get(symptoms[3], 0)]
                symptoms_scaled = test.transform(np.array(symptoms_encoded).reshape(1, -1))
                prediction = loaded_model.predict(symptoms_scaled)
                predicted_disease = list(d.keys())[np.argmax(prediction)]
                response = "Từ những triệu chứng bạn đưa vào, tôi có thể dự đoán kết quả bệnh sau: " + predicted_disease + "<br><br>" + getDescription(predicted_disease) + "<br><br> Bạn nên: <br><br>" + getPrecaution(predicted_disease)
                done_predicting = True

            elif len(symptoms) == 3:
                symptoms_with_empty = symptoms + [""]
                permutations_list = list(permutations(symptoms_with_empty))
                predictions = {}
                for symptom_permutation in permutations_list:
                    symptoms_encoded = [Symptom_1_map.get(symptom_permutation[0], 0),
                                        Symptom_2_map.get(symptom_permutation[1], 0),
                                        Symptom_3_map.get(symptom_permutation[2], 0),
                                        Symptom_4_map.get(symptom_permutation[3], 0)]
                    symptoms_scaled = test.transform(np.array(symptoms_encoded).reshape(1, -1))
                    prediction = loaded_model.predict(symptoms_scaled)
                    predicted_disease = list(d.keys())[np.argmax(prediction)]

                    if predicted_disease in predictions:
                                predictions[predicted_disease] += 1
                    else:
                        predictions[predicted_disease] = 1

                sorted_predictions = sorted(predictions.items(), key=lambda x: x[1], reverse=True)
                result_string = ""
                response += "Mặc dù không quá chắc chắn, nhưng từ những triệu chứng bạn đưa vào, tôi có thể dự đoán kết quả gồm những bệnh sau:\n"
                for i, (disease, frequency) in enumerate(sorted_predictions[:2]):
                    result_string +=  "<br><br>" + disease + "<br><br>" + getDescription(disease) + "<br><br> Bạn nên: <br><br>" + getPrecaution(disease)
                response += result_string 
                done_predicting = True
                break

            else:
                response = "Không đủ 3 hoặc 4 triệu chứng trở lên! Vui lòng nhập lại <br><br> Số triệu chứng tôi có thể hiểu được nằm ở đây: <br> <a href ='https://drive.google.com/file/d/1xDMmSvmWKGIhBHvfFUViNk0chWyd9gm3/view?usp=sharing'><strong>Triệu chứng</strong></a>"
                break
        return response

    else:
        return "Không đủ 3 hoặc 4 triệu chứng trở lên! Vui lòng nhập lại <br><br> Số triệu chứng tôi có thể hiểu được nằm ở đây: <br> <a href ='https://drive.google.com/file/d/1xDMmSvmWKGIhBHvfFUViNk0chWyd9gm3/view?usp=sharing'><strong>Triệu chứng</strong></a>"



if __name__ == '__main__':
    app.run()