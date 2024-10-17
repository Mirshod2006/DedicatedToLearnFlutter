package com.xamrayevmironshoh.mathquiz

import android.os.Bundle
import android.view.View
import android.view.inputmethod.EditorInfo
import android.widget.Button
import android.widget.EditText
import android.widget.TextView
import android.widget.Toast
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import kotlin.random.Random

class MainActivity : AppCompatActivity() {
    private lateinit var num1 : TextView;
    private lateinit var num2 : TextView;
    private lateinit var action : TextView;
    private lateinit var result : EditText;
    private lateinit var button : Button;

    private  var result1 : Int = 0
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContentView(R.layout.activity_main)
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main)) { v, insets ->
            val systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars())
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom)
            insets
        }
        findUi();

        setMathGame();
        button.setOnClickListener(View.OnClickListener {

        })
        result.setOnEditorActionListener(TextView.OnEditorActionListener { v, actionId, event ->
            if(EditorInfo.IME_ACTION_DONE == actionId){
               check()
               return@OnEditorActionListener true
            }
            false
        })
    }
    fun check(){
        var natija  : String= result.text.toString()
        if(natija == result1.toString()){
            Toast.makeText(this,"Barrakalla",Toast.LENGTH_SHORT).show()
        }else{
            Toast.makeText(this,"Qo'ykalla",Toast.LENGTH_SHORT).show()
        }
        setMathGame()
        result.setText("")
    }
    fun findUi() {
        this.num1 = findViewById(R.id.num1)
        this.num2 = findViewById(R.id.num2)
        this.action = findViewById(R.id.action)
        this.result = findViewById(R.id.input)
        this.button = findViewById(R.id.btn)
    }
    fun setMathGame(){
        val setVal1 =(0..100).random()
        val setVal2 =(1..100).random()
        val setVal3 =(0..3).random()
        num1.text = setVal1.toString()
        num2.text = setVal2.toString()
        when(setVal3){
          0 -> {
              action.text = "+"
              result1 = setVal1 + setVal2
          }
            1 -> {
                action.text = "-"
                result1 = setVal1 - setVal2
            }
            2 -> {
                action.text = "*"
                result1 = setVal1 * setVal2
            }
            3 -> {
                action.text = "/"
                result1 = setVal1 / setVal2
            }
        }
    }
}