package com.example.launcher

import android.app.ActivityManager
import android.content.Context
import android.os.Build
import androidx.annotation.RequiresApi
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {

    // Recent button click
    @RequiresApi(Build.VERSION_CODES.M)
    override fun onPause() {
        super.onPause()
        val activityManager: ActivityManager = applicationContext
            .getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
        activityManager.moveTaskToFront(taskId, 0)
    }
}
