@echo off
setlocal
where java >nul 2>nul || (echo Java is required. Install JDK 21. & exit /b 1)
if not exist gradlew (
  echo Gradle wrapper is missing. Open this project in Android Studio and let it sync, or add a Gradle wrapper.
  exit /b 1
)
call gradlew.bat :app:assembleDebug
if errorlevel 1 exit /b 1
echo APK: app\build\outputs\apk\debug\app-debug.apk
