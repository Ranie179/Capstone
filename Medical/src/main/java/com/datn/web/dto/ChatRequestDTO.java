package com.datn.web.dto;

import com.google.gson.annotations.SerializedName;

public class ChatRequestDTO {
    @SerializedName("user_input")
    String userInput;

    public String getUserInput() {
        return userInput;
    }

    public void setUserInput(String userInput) {
        this.userInput = userInput;
    }
}
