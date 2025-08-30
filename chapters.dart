import 'package:flutter/material.dart';


mixin ContentHelpers {
  Widget buildHeading(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent),
      ),
    );
  }

  Widget buildBullet(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("•  ", style: TextStyle(fontSize: 16)),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }

  Widget buildSubBullet(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, top: 2.0, bottom: 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("+  ", style: TextStyle(fontSize: 16)),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}

//Phishing Module
class PhishingPage extends StatelessWidget with ContentHelpers {
  const PhishingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Phishing - Don’t Take the Bait!", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey.shade800,iconTheme: const IconThemeData(color: Colors.white),),
      backgroundColor: Colors.blueGrey.shade50,

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildHeading("What is Phishing?"),
                    const Text(
                      "Phishing is a cyberattack where attackers trick individuals into giving away sensitive information, such as passwords, credit card numbers, or personal data, by pretending to be a trustworthy source.",
                      style: TextStyle(fontSize: 16),
                    ),
                    buildHeading("Common Methods"),
                    buildBullet("Emails"),
                    buildBullet("Text messages (SMS)"),
                    buildBullet("Social media messages"),
                    buildBullet("Fake websites"),
                    buildHeading("Common Types of Phishing"),
                    buildSubBullet("Email Phishing: Fake emails from real companies (banks, tech support, etc.)"),
                    buildSubBullet("Spear Phishing: Targeted phishing using personal info"),
                    buildSubBullet("Smishing: Phishing via SMS/text messages"),
                    buildSubBullet("Vishing: Phone call phishing"),
                    buildSubBullet("Clone Phishing: Copying a legitimate email and resending a fake one"),
                    buildHeading("How to Identify a Phishing Attempt"),
                    buildBullet("Generic greetings (e.g., 'Dear user')"),
                    buildBullet("Grammatically incorrect or bad spelling"),
                    buildBullet("Urgent or threatening language"),
                    buildBullet("Suspicious links (hover to preview before clicking)"),
                    buildBullet("Email addresses that don’t match sender name"),
                    buildHeading("Real-World Examples"),
                    buildSubBullet("PayPal Phishing: Fake emails asking users to confirm account details"),
                    buildSubBullet("Google Docs Scam: Fake Google Docs invitations stealing logins"),
                    buildSubBullet("COVID-19 Phishing: Fake emails offering vaccines or test results"),
                    buildHeading("How to Stay Safe"),
                    buildBullet("Never click suspicious links or download unknown attachments"),
                    buildBullet("Verify senders before responding to sensitive requests"),
                    buildBullet("Apply multi-factor authentication (MFA)"),
                    buildBullet("Keep browser and antivirus software updated"),
                    buildBullet("Report phishing attempts to your organization or email provider"),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text("Mark as Read"),
            ),
          ],
        ),
      ),
    );
  }
}

//Malware Module
class MalwarePage extends StatelessWidget with ContentHelpers {
  const MalwarePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Malware - Types & Protection", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey.shade800,iconTheme: const IconThemeData(color: Colors.white),),
      backgroundColor: Colors.blueGrey.shade50,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildHeading("What is Malware?"),
                    const Text(
                      "Malware (malicious software) is programmed to harm computers, servers, or networks. It can steal information, interrupt functions, monitor users, or access unauthorized systems.",
                      style: TextStyle(fontSize: 16),
                    ),
                    buildHeading("Features"),
                    buildBullet("Installs or operates without user's authorization"),
                    buildBullet("Can delete, encrypt, or steal data"),
                    buildBullet("Can be remotely operated by attackers"),
                    buildBullet("Often hides to avoid detection"),
                    buildSubBullet("Example: ILOVEYOU worm (2000) – circulated through email, caused 10B+ dollar damages"),
                    buildHeading("Common Types of Malware"),
                    buildBullet("Virus: Adheres to files; host file executes (e.g., Melissa Virus)"),
                    buildBullet("Worm: Self-replicates through networks (e.g., Blaster Worm)"),
                    buildBullet("Trojan Horse: Disguised as legitimate software (e.g., Zeus Trojan)"),
                    buildBullet("Spyware: Records user data unnoticed (e.g., DarkHotel)"),
                    buildBullet("Adware: Pop-ups and redirects to malicious sources (e.g., Fireball)"),
                    buildBullet("Rootkits: Conceal malicious activity by altering OS (e.g., Stuxnet)"),
                    buildHeading("How Malware Spreads"),
                    buildBullet("Phishing Emails: Malicious links pretending to be legitimate"),
                    buildBullet("Malicious Websites: Drive-by or fake downloads"),
                    buildBullet("USB Devices: Auto-running infected files"),
                    buildBullet("P2P File Sharing & Cracked Software"),
                    buildBullet("Exploits: Unpatched software vulnerabilities (e.g., EternalBlue)"),
                    buildSubBullet("Note: Outdated systems and lack of user awareness often cause success of attacks"),
                    buildHeading("Prevention and Protection"),
                    buildBullet("Keep software and OS up to date with security patches"),
                    buildBullet("Install reputable antivirus and firewall software"),
                    buildBullet("Do not open unknown attachments, links, or emails"),
                    buildBullet("Disable autorun for USB devices"),
                    buildBullet("Use strong passwords and two-factor authentication"),
                    buildBullet("Regularly backup data; encrypt backups"),
                    buildSubBullet("Tools: Bitdefender, Windows Defender, Malwarebytes, phishing protection extensions"),
                    buildHeading("Case Study – Emotet Banking Trojan"),
                    buildBullet("Vector: Malicious email attachment (Word macros)"),
                    buildBullet("Technique: Stole banking credentials, delivered other malware (e.g., TrickBot)"),
                    buildBullet("Discovery: First identified 2014, resurfaced multiple times"),
                    buildBullet("Impact: Europol lists Emotet as highly harmful malware strain"),
                    buildBullet("Result: Discovered in 2021 by international law enforcement effort"),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text("Mark as Read"),
            ),
          ],
        ),
      ),
    );
  }
}

//Ransomware Module
class RansomwarePage extends StatelessWidget with ContentHelpers {
  const RansomwarePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ransomware - Understanding Threats", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey.shade800,iconTheme: const IconThemeData(color: Colors.white),),
      backgroundColor: Colors.blueGrey.shade50,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildHeading("What is Ransomware?"),
                    const Text(
                      "Ransomware is a form of malicious software (malware) that encrypts files or records on the victim's machine and demands a ransom, usually in cryptocurrencies such as bitcoin.",
                      style: TextStyle(fontSize: 16),
                    ),
                    buildHeading("Characteristics"),
                    buildBullet("Encrypts user files and extorts payment"),
                    buildBullet("Shows a ransom note on screen"),
                    buildBullet("Spreads via phishing emails or exploits"),
                    buildSubBullet("Example: WannaCry (2017) infected 200,000+ computers in 150+ countries"),
                    buildHeading("Mechanism of Ransomware"),
                    buildSubBullet("Infection Stage: Through email attachments, fake software, or malicious websites"),
                    buildSubBullet("Execution Phase: Encrypts data using AES or RSA algorithms"),
                    buildSubBullet("Ransom Note Phase: Displays message demanding payment for decryption"),
                    buildBullet("Warning: No guarantee that files will be restored upon payment"),
                    buildHeading("Typical Forms"),
                    buildBullet("Crypto Ransomware: Encrypts files (e.g., CryptoLock, Locky)"),
                    buildBullet("Locker Ransomware: Locks screen (e.g., Police Trojan)"),
                    buildBullet("Ransomware-as-a-Service (RaaS): Non-technical attackers can rent ransomware"),
                    buildHeading("Spread of Ransomware"),
                    buildBullet("Phishing email attachments"),
                    buildBullet("Malicious websites and drive-by downloads"),
                    buildBullet("Exploiting software vulnerabilities (e.g., EternalBlue)"),
                    buildBullet("USB infections"),
                    buildHeading("Prevention and Protection"),
                    buildBullet("Maintain software and operating system updates"),
                    buildBullet("Install firewalls and antivirus"),
                    buildBullet("Avoid suspicious links and files"),
                    buildBullet("Regularly backup data offline or in the cloud"),
                    buildSubBullet("Recovery Tip: Use verified tools like NoMoreRansom.org"),
                    buildHeading("Case Study - WannaCry (2017)"),
                    buildBullet("Vector: Exploited unpatched Windows (EternalBlue) vulnerability"),
                    buildBullet("Harm: Disrupted stores, banks, and hospitals"),
                    buildBullet("Outcome: Estimated 4 Billion Dollars in damages worldwide"),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text("Mark as Read"),
            ),
          ],
        ),
      ),
    );
  }
}
