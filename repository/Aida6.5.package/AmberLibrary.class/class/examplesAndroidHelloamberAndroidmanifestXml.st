resources
examplesAndroidHelloamberAndroidmanifestXml
^'<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
      package="org.amberlang.android.helloamber"
      android:versionCode="1"
      android:versionName="1.0">
    <uses-sdk android:minSdkVersion="8" 
        android:targetSdkVersion="15" />
    <uses-permission android:name="android.permission.INTERNET" />
    <application android:label="@string/app_name" >
        <activity android:name="HelloAmber"
                  android:label="@string/app_name"
                  android:theme="@android:style/Theme.NoTitleBar">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>
    </application>
</manifest> 
'