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
    question: 'Share secrets with others?',
    options: [
      'Yes',
      'No',
      'Maybe',
      'Sometimes'
    ],
    answer: 1,
    category: 'Phishing',
  ),

  Bank(
    question: 'Share login info online?',
    options: [
      'Yes',
      'No',
      'Maybe',
      'Close friends'
    ],
    answer: 1,
    category: 'Phishing',
  ),

  Bank(
    question: 'You receive an email saying you won a prize and must click a link to claim it. What should you do?',
    options: [
      'Click the link immediately',
      'Ignore the email or verify the sender',
      'Reply with your personal information',
      'Forward it to all friends'
    ],
    answer: 1,
    category: 'Phishing',
  ),

  Bank(
    question: 'An unknown person calls asking for your password to fix your account. What is the best response?',
    options: [
      'Give them the password',
      'Hang up and report the call',
      'Write it on paper and send it',
      'Ask them to call back later'
    ],
    answer: 1,
    category: 'Phishing',
  ),

  Bank(
    question: 'You get a text from your “bank” asking to confirm your card number. What should you do?',
    options: [
      'Enter your card number',
      'Ignore and check your account separately',
      'Send it via email',
      'Share it on social media'
    ],
    answer: 1,
    category: 'Phishing',
  ),

  Bank(
    question: 'You see a link in an email that looks slightly different from the real website. What does this indicate?',
    options: [
      'It is safe',
      'It may be a fake site trying to steal information',
      'It is an advertisement',
      'It is a newsletter'
    ],
    answer: 1,
    category: 'Phishing',
  ),

  Bank(
    question: 'What is a common sign of a phishing email?',
    options: [
      'Too many spelling mistakes or urgent requests',
      'Includes pictures and emojis',
      'Sent from a friend’s email',
      'Has a signature at the bottom'
    ],
    answer: 0,
    category: 'Phishing',
  ),

  Bank(
    question: 'An email claims your account will be locked unless you update info immediately. What should you do?',
    options: [
      'Panic and update immediately',
      'Check the official website or app directly',
      'Call the number in the email',
      'Forward the email to others'
    ],
    answer: 1,
    category: 'Phishing',
  ),

  Bank(
    question: 'A message pressures you to act quickly to avoid losing money. What should you think?',
    options: [
      'It is probably urgent and safe',
      'It could be a trick to make you act without thinking',
      'It is definitely from the bank',
      'It is an advertisement'
    ],
    answer: 1,
    category: 'Phishing',
  ),

  Bank(
    question: 'A website asks for personal info, but the URL uses “http” instead of “https”. What does this indicate?',
    options: [
      'It is secure',
      'It may not be secure, proceed with caution',
      'It is verified by the government',
      'It is a newsletter'
    ],
    answer: 1,
    category: 'Phishing',
  ),

  Bank(
    question: 'You get an email that looks official but the sender’s address is strange. What should you do?',
    options: [
      'Trust it because it looks official',
      'Check the sender’s email carefully and verify',
      'Reply asking for clarification',
      'Click any links to confirm'
    ],
    answer: 1,
    category: 'Phishing',
  ),

  Bank(
    question: 'A social media message says you have a free gift and asks for login info. What is likely happening?',
    options: [
      'It is a promotion from the platform',
      'It is a phishing attempt to steal your credentials',
      'It is safe to provide info',
      'It is a friend testing you'
    ],
    answer: 1,
    category: 'Phishing',
  ),

  Bank(
    question: 'Which of the following habits reduces your risk of phishing?',
    options: [
      'Click all links immediately',
      'Use unique passwords and verify links before clicking',
      'Share your password with close friends',
      'Ignore security warnings'
    ],
    answer: 1,
    category: 'Phishing',
  ),

  //Ransomware

  Bank(
    question: 'Pay to unlock files?',
    options: [
      'Yes',
      'No',
      'Pay 50% first',
      'Ignore'
    ],
    answer: 1,
    category: 'Ransomware',
  ),

  Bank(
    question: 'Sending money to unlock',
    options: [
      'Yes! your files is priority',
      'No call the police',
      'Come to a treaty',
      'Ignore it they will prolly give files back'
    ],
    answer: 1,
    category: 'Ransomware',
  ),
  Bank(
    question: 'Unknown attachment safe?',
    options: [
      'Yes',
      'No check first',
      'Make friend to confirm first',
      'Option 2 and 3'
    ],
    answer: 1,
    category: 'Ransomware',
  ),

  Bank(
    question: 'Your computer suddenly shows a message saying your files are locked and you must pay money to unlock them. What is this an example of?',
    options: [
      'Ransomware attack',
      'Regular update',
      'Safe backup process',
      'Antivirus alert'
    ],
    answer: 0,
    category: 'Ransomware',
  ),

  Bank(
    question: 'You receive an email saying “Pay 500 Dollar in Bitcoin or your files will be deleted.” What kind of cyber threat is this?',
    options: [
      'Ransomware',
      'Phishing',
      'Normal bill',
      'Friendly reminder'
    ],
    answer: 0,
    category: 'Ransomware',
  ),

  Bank(
    question: 'What is the biggest risk if you pay money to ransomware criminals?',
    options: [
      'They may never give back your files',
      'Your computer becomes faster',
      'You will get extra storage',
      'It installs antivirus automatically'
    ],
    answer: 0,
    category: 'Ransomware',
  ),

  Bank(
    question: 'Suddenly all your photos, videos, and documents cannot be opened. What is the most likely reason?',
    options: [
      'They were encrypted by ransomware',
      'The files are sleeping',
      'The computer is low on memory',
      'Normal system update'
    ],
    answer: 0,
    category: 'Ransomware',
  ),

  Bank(
    question: 'Which of these is the best prevention against ransomware?',
    options: [
      'Regularly backing up files',
      'Clicking every email link',
      'Disabling antivirus',
      'Downloading cracked apps'
    ],
    answer: 0,
    category: 'Ransomware',
  ),

  Bank(
    question: 'What is the safest action if your computer is hit by ransomware?',
    options: [
      'Disconnect from the internet and seek help',
      'Pay the money quickly',
      'Ignore the message',
      'Share the malware with friends'
    ],
    answer: 0,
    category: 'Ransomware',
  ),

  Bank(
    question: 'If ransomware locks your data, what is it usually asking for?',
    options: [
      'Payment (often in cryptocurrency)',
      'Your phone number',
      'A software update',
      'Free antivirus'
    ],
    answer: 0,
    category: 'Ransomware',
  ),

  Bank(
    question: 'Which situation best describes ransomware?',
    options: [
      'Someone holds your files hostage until you pay',
      'Your screen shows too many ads',
      'Your internet speed slows down',
      'Your battery drains fast'
    ],
    answer: 0,
    category: 'Ransomware',
  ),

  Bank(
    question: 'Why should you NOT pay ransomware attackers?',
    options: [
      'They may still keep your files locked',
      'It encourages more crime',
      'You lose your money',
      'All of the above'
    ],
    answer: 3,
    category: 'Ransomware',
  ),


  Bank(
    question: 'If your files are safely backed up on an external drive, what happens if ransomware locks your computer?',
    options: [
      'You can restore your files without paying',
      'You must still pay',
      'Your backup also gets locked automatically',
      'Your files disappear forever'
    ],
    answer: 0,
    category: 'Ransomware',
  ),

  Bank(
    question: 'Which of these is a common sign of ransomware?',
    options: [
      'You see a ransom note on screen',
      'All files suddenly get strange extensions',
      'Your computer demands money to unlock files',
      'All of the above'
    ],
    answer: 3,
    category: 'Ransomware',
  ),

  Bank(
    question: 'Who usually spreads Ransomwar',
    options: [
      'Cybercriminals',
      'Government',
      'Your friends',
      'Antivirus companies'
    ],
    answer: 0,
    category: 'Ransomware',
  ),

  //Malware

  Bank(
    question: 'Download unknown app safe?',
    options: [
      'Yes',
      'No',
      'Option 1 and 4',
      'Make friend confirm first'
    ],
    answer: 1,
    category: 'Malware',
  ),
  Bank(
    question: 'Computer slow suddenly?',
    options: [
      'Option 2 and 3',
      'Malware',
      'Update',
      'Battery'
    ],
    answer: 1,
    category: 'Malware',
  ),
  Bank(
    question: 'USB from stranger?',
    options: [
      'Plug in',
      'Scan first',
      'Ignore',
      'Make someone use it first'
    ],
    answer: 2,
    category: 'Malware',
  ),
  Bank(
    question: 'Pop-ups appear in browser?',
    options: [
      'Normal',
      'Ads',
      'Virus',
      'Update'
    ],
    answer: 1,
    category: 'Malware',
  ),
  Bank(
    question: 'App asks contacts access?',
    options: [
      'Allow but check first',
      'Deny after checking',
      'Option 1 and 2',
      'Use parents device'
    ],
    answer: 2,
    category: 'Malware',
  ),

  Bank(
    question: 'Your computer suddenly becomes very slow after installing free software from an unknown website. What is most likely happening?',
    options: [
      'The software may contain malware',
      'The computer is just tired',
      'It needs more coffee',
      'It is updating legally'
    ],
    answer: 0,
    category: 'Malware',
  ),

  Bank(
    question: 'Pop-up ads keep appearing on your screen even when no browser is open. What is this a sign of?',
    options: [
      'Normal internet behavior',
      'Adware infection',
      'Good antivirus',
      'Email settings'
    ],
    answer: 1,
    category: 'Malware',
  ),

  Bank(
    question: 'A friend says they received strange messages from your account that you did not send. What could this mean?',
    options: [
      'Your account might be hacked by malware',
      'It is a mistake',
      'They are joking',
      'It is spam from the phone company'
    ],
    answer: 0,
    category: 'Malware',
  ),

  Bank(
    question: 'What should you do if an unknown program installs itself automatically on your computer?',
    options: [
      'Leave it alone',
      'Uninstall or scan with antivirus immediately',
      'Send it to friends',
      'Trust it as a new feature'
    ],
    answer: 1,
    category: 'Malware',
  ),

  Bank(
    question: 'Your files suddenly disappear or get replaced with strange icons. What might be the cause?',
    options: [
      'You cleaned your desktop',
      'Malware or virus infection',
      'System update',
      'Low storage space'
    ],
    answer: 1,
    category: 'Malware',
  ),

  Bank(
    question: 'Downloading “cracked” or free pirated software increases the risk of what?',
    options: [
      'Winning a prize',
      'Getting malware infection',
      'Improving computer speed',
      'Automatic warranty'
    ],
    answer: 1,
    category: 'Malware',
  ),

  Bank(
    question: 'Which of these is a safe habit to avoid malware?',
    options: [
      'Click on every email link',
      'Install antivirus and update software regularly',
      'Download from unknown websites',
      'Disable all security features'
    ],
    answer: 1,
    category: 'Malware',
  ),

  Bank(
    question: 'Your webcam light turns on without you opening any app. What might be happening?',
    options: [
      'Camera is broken',
      'Malware could be spying on you',
      'It is charging',
      'Normal system update'
    ],
    answer: 1,
    category: 'Malware',
  ),

  Bank(
    question: 'You receive an email attachment claiming to be an invoice, but you don’t know the sender. What should you do?',
    options: [
      'Open it to see details',
      'Delete or scan it first',
      'Forward to colleagues',
      'Reply asking for money'
    ],
    answer: 1,
    category: 'Malware',
  ),

  Bank(
    question: 'After connecting a USB drive from a stranger, your computer shows errors and new apps. What likely happened?',
    options: [
      'USB installed malware',
      'USB gave free updates',
      'It is harmless',
      'It cleaned the system'
    ],
    answer: 0,
    category: 'Malware',
  ),

  Bank(
    question: 'Which everyday behavior is most risky for malware?',
    options: [
      'Visiting only trusted websites',
      'Clicking pop-ups and unknown ads',
      'Using antivirus protection',
      'Regularly updating your phone'
    ],
    answer: 1,
    category: 'Malware',
  ),
];
