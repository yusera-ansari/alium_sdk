package com.example.example;

import android.os.Bundle;

import com.dwao.alium.survey.Alium;

public class Application extends android.app.Application {

    @Override
   public void onCreate( ){
    super.onCreate();
        Alium.config(this, "");
    }
}
