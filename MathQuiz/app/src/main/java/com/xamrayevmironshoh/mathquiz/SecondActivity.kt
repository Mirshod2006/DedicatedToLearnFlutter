package com.xamrayevmironshoh.mathquiz

import android.os.Bundle
import android.view.View
import android.widget.Button
import android.widget.ImageView
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat

class SecondActivity : AppCompatActivity() {
    private lateinit var image : ImageView;
    private lateinit var button : Button;
    private var url : String = "https://media.idownloadblog.com/wp-content/uploads/2021/09/Apple_iPhone-13-Pro_iPhone-13-Pro-Max_09142021-1248x2048.jpg"
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContentView(R.layout.activity_second)
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main)) { v, insets ->
            val systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars())
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom)
            insets
        }
        //url loading
        //1.Picasso
        //2.Glide
        //3.Fresco
        //4.Coil
        image = findViewById(R.id.img)
        button = findViewById(R.id.btn1)
        button.setOnClickListener(View.OnClickListener {

        })
    }
}