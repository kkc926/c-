package com.example.basic_3_toast_noti

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Toast

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        btnToast.setOnClickListener {
            Toast.makeText(application, "안녕하세요", Toast.LENGTH_LONG).show()
        }
    }
}