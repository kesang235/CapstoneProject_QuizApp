# 🛡️ Adaptive Cybersecurity Quiz App  

An educational Flutter app that teaches **Phishing, Malware, and Ransomware** with an **adaptive quiz system** powered by AI.  

<br>  

## 📖 Table of Contents  
- [About](#-about)  
- [Features & Gameplay](#-features--gameplay)  
- [Installation](#-installation)  
- [Tech Stack](#-tech-stack)  
- [License](#-license)  
- [Credits](#-credits)  

<br>  

## 📌 About  

**Adaptive Cybersecurity Quiz App** is designed to raise awareness of **cyber threats** through an interactive learning experience.  
Users first read about phishing, malware, and ransomware, then attempt a quiz that **adapts to their knowledge level**.  

This project was built as a **capstone project** to demonstrate AI + education integration.  

<br>  

## 🕹️ Features & Gameplay  

- 📚 **Learning Modules**: Phishing, Malware, Ransomware  
- 🎯 **Adaptive Quiz Engine**  
  - Dynamically adjusts question difficulty (Easy → Medium → Hard)  
  - Uses **Facebook BART API** for difficulty analysis  
- 💡 **Hints System**  
  - Easy → clear hints  
  - Medium → moderate hints  
  - Hard → vague to no hints  
- ✅ **Progress Tracking**: Must complete modules before unlocking quiz  
- 📱 **Mobile Ready**: Exported as Android APK for real-device use  

<br>  

## 🚀 Installation  

### Option 1: Install APK on Android  
- Navigate to:  
- Copy the `app-release.apk` to your Android device  
- Install and run the app  

### Option 2: Run in Flutter (development mode)  
1. Clone this repo  
2. Navigate to the project root and run:  
 ```bash
 flutter pub get
 flutter run
Ensure you have a working Android/iOS emulator OR a connected device

<br>
###🛠️ Tech Stack

###Frontend: Flutter (Dart)

###Backend/NLP: Facebook BART API

###Deployment: Android (APK build via Gradle)

<br>
📄 License

MIT © Your Name

<br>
📄 Credits

Flutter team (framework & SDK)
Facebook AI (BART API)
Special thanks to [Gateway Business College] for project coordination
