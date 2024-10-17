package com.xamrayevmironshoh.lesson1

import android.os.Bundle
import android.view.View
import android.widget.Toast
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContentView(R.layout.activity_main)
//       val btn1 = R.id.btn1
//       val btn2 = R.id.btn2
//       val btn3 = R.id.btn3
//       val btn4 = R.id.btn4
//        btn1.setOnClickListener(View.OnClickListener(){
//            fun onClick(view : View){
//                Toast.makeText(this,"Button 1 clicked!",Toast.LENGTH_SHORT).show()
//            }
//        })
//        btn2.setOnClickListener(View.OnClickListener(){
//            fun onClick(view : View){
//                Toast.makeText(this,"Button 2 clicked!",Toast.LENGTH_SHORT).show()
//            }
//        })
//        btn3.setOnClickListener(View.OnClickListener(){
//            fun onClick(view : View){
//                Toast.makeText(this,"Button 3 clicked!",Toast.LENGTH_SHORT).show()
//            }
//        })
//        btn4.setOnClickListener(View.OnClickListener(){
//            fun onClick(view : View){
//                Toast.makeText(this,"Button 4 clicked!",Toast.LENGTH_SHORT).show()
//            }
//        })
    }

   /* fun myButtonOnClick(view : View){
        val id : Int = view.id
        when(id){
            R.id.btn1 ->Toast.makeText(this,"Button 1 clicked!",Toast.LENGTH_SHORT).show()
            R.id.btn2 ->Toast.makeText(this,"Button 2 clicked!",Toast.LENGTH_SHORT).show()
            R.id.btn3 ->Toast.makeText(this,"Button 3 clicked!",Toast.LENGTH_SHORT).show()
            R.id.btn4 ->Toast.makeText(this,"Button 4 clicked!",Toast.LENGTH_SHORT).show()
        }
    }*/
}