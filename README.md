# 🛡️ Adaptive Cybersecurity Quiz App  

An educational Flutter app that teaches **Phishing, Malware, and Ransomware** with an **adaptive AI-powered quiz system**.  

<br>  

## 📖 Table of Contents  
- [About](#-about)  
- [Features](#-features)  
- [Difficulty Labelling](#-difficulty-labelling)  
- [Hint-Bot](#-hint-bot)  
- [Progress Tracking](#-progress-tracking)  
- [Installation](#-installation)  
- [Tech Stack](#-tech-stack)  
- [License](#-license)  
- [Credits](#-credits)  

<br>  

## 📌 About  

**Adaptive Cybersecurity Quiz App** is designed to raise awareness of **cyber threats** (phishing, malware, and ransomware) through an interactive learning experience.  

Users first complete learning modules, then attempt a quiz that **adapts to their knowledge level** using multiple difficulty factors.  

<br>  

## 🕹️ Features  

- 📚 **Learning Modules**: Covers phishing, malware, ransomware  
- 🎯 **Adaptive Quiz Engine**: Dynamically adjusts question difficulty (Easy → Medium → Hard)  
- 💡 **Hint-Bot**: Provides contextual hints from a predefined knowledge base  
- 📊 **Progress Tracking**: Tracks module completion, quiz attempts, score, and current difficulty  
- 📱 **Mobile Ready**: Exported as Android APK for real-device use  

<br>  

## 🔎 Difficulty Labelling  

The quiz uses **multiple factors** to determine question difficulty:  

1. **Facebook BART (MNLI API)**  
   - Widely used for text classification tasks in NLP  
   - Cost-efficient and pretrained for understanding complex language  
   - Each question is sent to the API with 3 labels: *Easy, Medium, Hard*  
   - API returns probability scores → highest probability label is chosen  
   - To optimize performance, only 3 questions are filtered at a time (not all 30)  

2. **Glossary-Based Term Matching**  
   - A dataset of cybersecurity technical terms is used  
   - More domain-specific words = more cognitive load (supported by CompLex 2.0 research)  
   - Rules:  
     - No term match → **Easy**  
     - 1 term match → **Medium**  
     - 2+ term matches → **Hard**  

3. **Question Length**  
   - Inspired by readability formulas (Flesch-Kincaid, Gunning Fog)  
   - Longer sentences increase cognitive load  
   - Rules:  
     - < 5 words → **Easy**  
     - 5–8 words → **Medium**  
     - > 8 words → **Hard**  

✅ Final difficulty is chosen by a **voting system**: each factor gives its vote, and the label with the most votes is selected.  

<br>  

## 💡 Hint-Bot  

- Provides instant hints when the user presses the *hint button*  
- Uses a **predefined hint-bank**, eliminating reliance on external APIs  
- If no match is found → responds with *“Sorry, couldn’t understand.”*  

<br>  

## 📊 Progress Tracking  

- Records completion of modules and quiz attempts with no performance impact  
- Displays:  
  - Current difficulty level  
  - Score  
  - Current question number (progress in quiz)  

<br>  

## 🚀 Installation  

### Option 1: Install APK on Android  
- Navigate to:  
- Copy `app-release.apk` to your Android device  
- Install and run the app

##🛠️ Tech Stack

Frontend: Flutter (Dart)
Backend/NLP: Facebook BART API
Dataset: Custom glossary of cybersecurity terms
Deployment: Android APK (Gradle build)

<br>
##📄 License

© Kesang Lama

<br>
##📄 Credits

Flutter team (framework & SDK)
Facebook AI (BART API)
Special thanks to [Gateway Business College] for project coordination
