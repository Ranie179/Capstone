import pandas as pd
import numpy as np
import seaborn as sns
import tensorflow
from tensorflow import keras
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import MinMaxScaler
import tensorflow as tf
from keras.callbacks import ModelCheckpoint
from keras.models import load_model

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
for i,j in zip(data['disease'].unique(),range(len(data['disease'].unique()))):
  d[i] = j

data['disease'] = data['disease'].map(d)

x = data.iloc[:,1:]
y = data.iloc[:,:1]

x_train,x_test,y_train,y_test = train_test_split(x,y,random_state=72,test_size=0.10,stratify=y)


scale_test = MinMaxScaler()
scale_train = MinMaxScaler()
x_train_scaled = scale_train.fit_transform(x_train)
x_test_scaled = scale_test.fit_transform(x_test)

y_train_cat = keras.utils.to_categorical(y_train,num_classes=60,dtype='float32')
y_test_cat = keras.utils.to_categorical(y_test,num_classes=60,dtype='float32')

model = keras.Sequential([
                  keras.layers.Flatten(input_shape = (4,)),
                  keras.layers.Dense(3000,activation='elu'),
                  keras.layers.Dense(3000,activation='elu'),
                  keras.layers.Dense(2000,activation='elu'),
                  keras.layers.Dense(2000,activation='elu'),
                  keras.layers.Dense(1000,activation='elu'),
                  keras.layers.Dense(1000,activation='elu'),
                  keras.layers.Dense(500,activation='elu'),
                  keras.layers.Dense(500,activation='elu'),
                  keras.layers.Dense(60,activation='softmax')
])


model.compile(optimizer='adam',loss='sparse_categorical_crossentropy',metrics='accuracy')

model.fit(x_train_scaled,y_train,epochs=100,batch_size=512)

filepath = "medical.h5"
checkpoint = ModelCheckpoint(filepath, monitor='val_accuracy', verbose=1, save_best_only=True, mode='max')

history = model.fit(x_train_scaled, y_train, epochs=100, batch_size=512, validation_data=(x_test_scaled, y_test), callbacks=[checkpoint])

loaded_model = load_model('medical.h5')

y_pred = loaded_model.predict(x_test_scaled)

