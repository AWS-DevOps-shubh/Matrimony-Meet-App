package com.matrimonymeet

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import androidx.appcompat.app.AppCompatActivity
import com.matrimonymeet.R

class LoginActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_login)
        
        val btnLogin: Button = findViewById(R.id.btn_login)
        btnLogin.setOnClickListener {
            startActivity(Intent(this, DashboardActivity::class.java))
        }
    }
}