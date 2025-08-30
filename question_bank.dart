class Bank {
  final String question;
  final List<String> options;
  final int answer;
  String? difficulty;
  final String category;

  Bank({
    required this.question,
    required this.options,
    required this.answer,
    this.difficulty,
    required this.category,
  });
}

final List<Bank> questionBank = [

  //Phishing
  Bank(
    question: 'What is the primary goal of a phishing attack?',
    options: [
      'To delete user files',
      'To gain unauthorized access to sensitive information',
      'To monitor CPU temperature',
      'To update system firmware'
    ],
    answer: 1,
    category: 'Phishing',
  ),
  Bank(
    question: 'Email asks password?',
    options: [
      'Phishing',
      'Ransomware',
      'Malware',
      'Safe'
    ],
    answer: 0,
    category: 'Phishing',
  ),
  Bank(
    question: 'Fake website link?',
    options: [
      'Phishing',
      'Malware',
      'Ransomware',
      'Virus'
    ],
    answer: 0,
    category: 'Phishing',
  ),
  Bank(
    question: 'Suspicious message request?',
    options: [
      'Malware',
      'Phishing',
      'Trojan',
      'Safe'
    ],
    answer: 1,
    category: 'Phishing',
  ),
  Bank(
    question: 'Someone wants login?',
    options: [
      'Ransomware',
      'Phishing',
      'Malware',
      'Spam'
    ],
    answer: 1,
    category: 'Phishing',
  ),
  Bank(
    question: 'Which of the following is NOT a common phishing vector?',
    options: [
      'Email',
      'SMS',
      'Instant Messaging',
      'Compiler Logs'
    ],
    answer: 3,
    category: 'Phishing',
  ),
  Bank(
    question: 'Spear-phishing is:',
    options: [
      'A random virus',
      'A targeted phishing attack on specific individuals',
      'A phishing attack from fake social media accounts',
      'A type of DDoS attack'
    ],
    answer: 1,
    category: 'Phishing',
  ),
  Bank(
    question: 'What psychological trick is often used in phishing emails?',
    options: [
      'Humor',
      'Urgency',
      'Philosophy',
      'Confusion'
    ],
    answer: 1,
    category: 'Phishing',
  ),
  Bank(
    question: 'What does the Anti-Phishing Working Group (APWG) report as the most used protocol in phishing attacks?',
    options: [
      'FTP',
      'HTTP',
      'HTTPS',
      'VPN'
    ],
    answer: 2,
    category: 'Phishing',
  ),
  Bank(
    question: 'Which machine learning model is commonly used in phishing detection?',
    options: [
      'K-Means Clustering',
      'CNN',
      'PCA',
      'Naive Bayes'
    ],
    answer: 1,
    category: 'Phishing',
  ),
  Bank(
    question: 'What is "vishing"?',
    options: [
      'Visual phishing',
      'Phishing through video games',
      'Phishing via voice calls',
      'VPN-based spoofing'
    ],
    answer: 2,
    category: 'Phishing',
  ),
  Bank(
    question: 'What term describes a fake website designed to look like a real one?',
    options: [
      'FakeWeb',
      'Cloned Web',
      'Spoofed Site',
      'Proxy Mask'
    ],
    answer: 2,
    category: 'Phishing',
  ),
  Bank(
    question: 'What does “Smishing” refer to?',
    options: [
      'Sending phishing emails',
      'Phishing using SMS',
      'Shared Mail Intelligence Scheme',
      'SMS virus hacking'
    ],
    answer: 1,
    category: 'Phishing',
  ),
  Bank(
    question: 'Which of the following is a visual cue that a site might be phishing?',
    options: [
      'Green lock icon',
      'Misspelled URL',
      'Use of bold fonts',
      'Long website name'
    ],
    answer: 1,
    category: 'Phishing',
  ),

  //Ransomware
  Bank(
    question: 'What is the main function of ransomware?',
    options: [
      'Display ads',
      'Encrypt files and demand payment',
      'Scan for vulnerabilities',
      'Speed up the system'
    ],
    answer: 1,
    category: 'Ransomware',
  ),
  Bank(
    question: 'Files locked suddenly?',
    options: [
      'Ransomware',
      'Virus',
      'Phishing',
      'Spyware'
    ],
    answer: 0,
    category: 'Ransomware',
  ),
  Bank(
    question: 'Pay to unlock files?',
    options: [
      'Malware',
      'Ransomware',
      'Adware',
      'Trojan'
    ],
    answer: 1,
    category: 'Ransomware',
  ),
  Bank(
    question: 'Computer shows ransom?',
    options: [
      'Ransomware',
      'Virus',
      'Phishing',
      'Safe'
    ],
    answer: 0,
    category: 'Ransomware',
  ),
  Bank(
    question: 'Sudden file encryption?',
    options: [
      'Malware',
      'Phishing',
      'Ransomware',
      'Spyware'
    ],
    answer: 2,
    category: 'Ransomware',
  ),
  Bank(
    question: 'Which attack vector is most common for ransomware?',
    options: [
      'Bluetooth',
      'USB keyboard',
      'Phishing email',
      'Sound waves'
    ],
    answer: 2,
    category: 'Ransomware',
  ),

  Bank(
    question: 'What is a major risk of paying the ransom?',
    options: [
      'The FBI will charge a fee',
      'Files might not be restored',
      'It boosts battery drain',
      'It lowers encryption strength'
    ],
    answer: 1,
    category: 'Ransomware',
  ),

  Bank(
    question: 'What is Ransomware-as-a-Service (RaaS)?',
    options: [
      'Anti-ransomware tool',
      'A backup solution',
      'A business model to rent out ransomware',
      'A type of VPN'
    ],
    answer: 2,
    category: 'Ransomware',
  ),

  Bank(
    question: 'Which of the following is a good prevention strategy?',
    options: [
      'Always click unknown links',
      'Use strong backup systems',
      'Disable antivirus',
      'Update only yearly'
    ],
    answer: 1,
    category: 'Ransomware',
  ),

  Bank(
    question: 'What does ransomware typically demand after encrypting your data?',
    options: [
      'Reboot',
      'Password',
      'Payment (usually in crypto)',
      'Antivirus'
    ],
    answer: 2,
    category: 'Ransomware',
  ),

  Bank(
    question: 'What kind of file extensions do ransomware often target?',
    options: [
      '.exe',
      '.jpg, .doc, .xls',
      '.sys',
      '.dll'
    ],
    answer: 1,
    category: 'Ransomware',
  ),

  Bank(
    question: 'Which ransomware was one of the first to use cryptocurrency payments?',
    options: [
      'CryptoLocker',
      'Petya',
      'WannaCry',
      'Locky'
    ],
    answer: 0,
    category: 'Ransomware',
  ),

  Bank(
    question: 'Which action is best to take after a ransomware infection?',
    options: [
      'Pay immediately',
      'Disconnect the device from the network',
      'Restart the system',
      'Send the malware to friends'
    ],
    answer: 1,
    category: 'Ransomware',
  ),

  Bank(
    question: 'What government agency often advises not to pay ransoms?',
    options: [
      'NASA',
      'IRS',
      'FBI',
      'WHO'
    ],
    answer: 2,
    category: 'Ransomware',
  ),

  //Malware
  Bank(
    question: 'What does malware stand for?',
    options: [
      'Malicious software',
      'Malfunctioning ware',
      'Market software',
      'Malware antivirus'
    ],
    answer: 0,
    category: 'Malware',
  ),

  Bank(
    question: 'Which malware spreads without a host file?',
    options: [
      'Virus',
      'Worm',
      'Trojan',
      'Spyware'
    ],
    answer: 1,
    category: 'Malware',
  ),

  Bank(
    question: 'Which of these is a spyware function?',
    options: [
      'Encrypting files',
      'Showing ads',
      'Logging keystrokes',
      'Disabling firewall'
    ],
    answer: 2,
    category: 'Malware',
  ),

  Bank(
    question: 'What is the best way to avoid malware infection?',
    options: [
      'Use public Wi-Fi',
      'Disable antivirus',
      'Install cracked software',
      'Keep your software updated'
    ],
    answer: 3,
    category: 'Malware',
  ),

  Bank(
    question: 'Which malware pretends to be a useful app?',
    options: [
      'Rootkit',
      'Trojan',
      'Worm',
      'Adware'
    ],
    answer: 1,
    category: 'Malware',
  ),
  Bank(
    question: 'Which malware is designed to provide ongoing privileged access to a system?',
    options: [
      'Spyware',
      'Adware',
      'Rootkit',
      'Worm'
    ],
    answer: 2,
    category: 'Malware',
  ),

  Bank(
    question: 'What type of malware disguises itself as legitimate software?',
    options: [
      'Trojan',
      'Ransomware',
      'Worm',
      'Keylogger'
    ],
    answer: 0,
    category: 'Malware',
  ),

  Bank(
    question: 'Which malware collects user information without consent?',
    options: [
      'Worm',
      'Spyware',
      'Trojan',
      'Scareware'
    ],
    answer: 1,
    category: 'Malware',
  ),

  Bank(
    question: 'What malware floods your screen with unwanted advertisements?',
    options: [
      'Adware',
      'Trojan',
      'Rootkit',
      'Worm'
    ],
    answer: 0,
    category: 'Malware',
  ),
  Bank(
    question: 'Program runs secretly?',
    options: [
      'Malware',
      'Ransomware',
      'Phishing',
      'Safe'
    ],
    answer: 0,
    category: 'Malware',
  ),
  Bank(
    question: 'Computer slows suddenly?',
    options: [
      'Malware',
      'Ransomware',
      'Phishing',
      'Internet'
    ],
    answer: 0,
    category: 'Malware',
  ),
  Bank(
    question: 'Unwanted popups appear?',
    options: [
      'Malware',
      'Adware',
      'Phishing',
      'Ransomware'
    ],
    answer: 1,
    category: 'Malware',
  ),
  Bank(
    question: 'Unknown software installed?',
    options: [
      'Malware',
      'Worm',
      'Trojan',
      'Phishing'
    ],
    answer: 0,
    category: 'Malware',
  ),
  Bank(
    question: 'Which of these is NOT a type of malware?',
    options: [
      'Virus',
      'Trojan',
      'Firewall',
      'Ransomware'
    ],
    answer: 2,
    category: 'Malware',
  ),
];
