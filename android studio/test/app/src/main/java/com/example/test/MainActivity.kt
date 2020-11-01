package com.example.yongin_java

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.AdapterView.OnItemClickListener
import android.widget.GridView
import androidx.appcompat.app.AppCompatActivity
import com.example.test.FullScreenActivity
import com.example.test.ImageAdapter
import com.example.test.R

class MainActivity : AppCompatActivity() {
    var gridView: GridView? = null
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        gridView = findViewById<View>(R.id.grid_view) as GridView
        gridView!!.adapter = ImageAdapter(this)
        gridView!!.onItemClickListener =
            OnItemClickListener { parent, view, position, id ->
                val intent = Intent(applicationContext, FullScreenActivity::class.java)
                intent.putExtra("id", position)
                startActivity(intent)
            }
    }
}