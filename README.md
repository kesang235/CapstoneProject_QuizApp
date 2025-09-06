# 🛡️ Adaptive Cybersecurity Quiz App  (Android only)

An educational Flutter app that teaches **Phishing, Malware, and Ransomware** with an **adaptive AI-powered quiz system**.  

<br>  

## 📖 Table of Contents  
- [About](#-about)  
- [Features](#-features)  
- [Difficulty Labelling](#-difficulty-labelling)  
- [Hint-Bot](#-hint-bot)  
- [Progress Tracking](#-progress-tracking)  
- [Installation](#-installation)  
- [Tech](#-tech)  
- [License](#-license)  
- [Credits](#-credits)  


<br>  

## 📌 About  

**Adaptive Cybersecurity Quiz App** is designed to raise awareness of **cyber threats** (phishing, malware, and ransomware)  

Users first complete learning modules, then attempt a quiz that **adapts to their knowledge level** using multiple difficulty factors.  

<br>  

## 🕹 Features

- 📚 **Learning Modules**: Covers phishing, malware, ransomware  
- 🎯 **Adaptive Quiz Engine**: Dynamically adjusts question difficulty (Easy → Medium → Hard)  
- 💡 **Hint-Bot**: Provides contextual hints from a predefined knowledge base  
- 📊 **Progress Tracking**: Tracks module completion, quiz attempts, score, and current difficulty  
- 📱 **Mobile Ready**: Exported as Android APK for real-device use  

<br>  

## 🔎 Difficulty Labelling  

The quiz uses **multiple factors** to determine question difficulty:  

1. **Facebook BART (MNLI API)**  
   - Each question is sent to the API with 3 labels: *Easy, Medium, Hard*  
   - API returns probability scores → highest probability label is chosen  

2. **Glossary-Based Term Matching**  
A dataset of cybersecurity technical terms is used   
   - No term match → **Easy**  
   - 1 term match → **Medium**  
   - 2+ term matches → **Hard**  

3. **Question Length**  
   - <5 words → **Easy**  
   - 5–8 words → **Medium**  
   - 8 words → **Hard**  

✅ Final difficulty is chosen by a **voting system**: each factor gives its vote, and the label with the most votes is selected.  

<br>  

## 💡 Hint-Bot  

- Provides instant hints when the user presses the *hint button*  

<br>  

## 📊 Progress Tracking  

- Displays:  
  - Current difficulty level  
  - Score
  - Light Prompt to let user know if the answer is right or wrong
  - Current question number (progress in quiz)  

<br>  

## 🚀 Installation  

### Install APK on Android  

- Open the project in Android Studio.
- Place glossary.csv in the assets folder and the Dart files in lib.
- In difficulty_tag.dart, enter your own Hugging Face API key. (This is for your safety — my API key is not public and using it is restricted.)
- Build the APK.
- Transfer and run the APK on your device.
Note: The APK in this repo uses an invalid API key but still works using the glossary and question length factor.

<br> 

## 🛠 Tech
- Frontend: Flutter (Dart)
- Backend/NLP: Facebook BART API
- Dataset: Custom glossary of cybersecurity terms
- Deployment: Android APK
  
<br>

## 📄 License

© Kesang Lama

<br>

## 📄 Credits

- My Group (Sushil, Subash, Manish, Krishna)
- Flutter team (framework & SDK)
- Facebook AI (BART API)
- Dataset from Computer Science Ontology (CSO)
- Special thanks to [Gateway Business College] for project coordination
