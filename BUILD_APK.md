# APK build

## Easiest: Android Studio
1. Open the `PdfFloatTools` folder in Android Studio.
2. Let Gradle sync and install Android SDK 35 if Android Studio asks.
3. Choose **Build > Build APK(s)**.
4. APK: `app/build/outputs/apk/debug/app-debug.apk`

## GitHub Actions (no Android Studio needed)
1. Create a GitHub repository.
2. Upload this whole project.
3. Push to the `main` branch.
4. Open **Actions > Build PDF Float Tools APK**.
5. Download the artifact named `pdf-float-tools-debug-apk`.

The included workflow installs Android SDK 35 and builds the debug APK automatically.
