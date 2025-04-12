import java.util.Properties

plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

val ndkVersionFromLocal: String? = run {
    val properties = Properties()
    file("${rootDir}/local.properties").inputStream().use { properties.load(it) }
    properties.getProperty("ndk.version")
}

android {
    namespace = "com.example.basketball_points_app"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = ndkVersionFromLocal ?: "29.0.13113456" // fallback للنسخة اللي عندك

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.basketball_points_app"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
