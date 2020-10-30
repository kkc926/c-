package com.example.test

import android.os.Bundle
import android.view.View
import android.widget.ImageView
import androidx.appcompat.app.AppCompatActivity


class FullScreenActivity : AppCompatActivity() {
    var imageView: ImageView? = null
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_full_screen)
        imageView = findViewById<View>(R.id.image_view) as ImageView
        supportActionBar!!.hide()
        supportActionBar!!.setTitle("Full Screen Image")
        val i = intent
        val position = i.extras!!.getInt("id")
        val imageAdapter = ImageAdapter(this)
        imageView!!.setImageResource(imageAdapter.imageArray[position])
    }
}