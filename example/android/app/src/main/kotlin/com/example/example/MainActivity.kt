package com.example.example

import com.dwao.alium.survey.Alium
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity(){
    override fun onDestroy() {
        super.onDestroy()
        if(!isChangingConfigurations){
            Alium.cleanup()
        }
    }
}
