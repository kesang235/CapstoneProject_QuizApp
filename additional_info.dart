import 'package:flutter/material.dart';
import 'chapters.dart';

class AdditionalInfoPage extends StatelessWidget with ContentHelpers {
  final String category;
  const AdditionalInfoPage({Key? key, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      switch (category) {
        case 'Phishing':
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildHeading("Phishing (Refresher)"),
              const Text(
                  "You are most likely to be a victim of phishing.\nLet’s fix this."),
              buildHeading("PREVENTION"),
              buildBullet("Don’t click on unknown links."),
              buildBullet(
                  "You can visit https://phishtank.org/ to check phishing links if unsure."),
              buildHeading("DETECTION"),
              buildBullet("Hover over the link to find its true destination."),
              buildBullet("Look for urgency or grammar mistakes."),
              buildBullet(
                  "Watch out for generic greetings like 'User' or 'Customer'."),
              buildBullet(
                  "Double-check the sender’s email address for small spelling changes."),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade700,),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PhishingPage()),
                  );
                },
                child: const Text("Back to Phishing Module",style: TextStyle(
                  fontSize: 16, color: Colors.white,)),
              ),
            ],
          );
        case 'Ransomware':
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildHeading("Ransomware (Refresher)"),
              const Text(
                  "You are most likely to be a victim of Ransomware.\nLet’s fix this."),
              buildHeading("PREVENTION"),
              buildBullet("Back up files, e.g., cloud storage."),
              buildBullet("Avoid suspicious emails and unknown links."),
              buildBullet("Keep your system up-to-date."),
              buildHeading("DETECTION"),
              buildBullet("Your files are suddenly gone or locked."),
              buildBullet("Unexpected lock screens appear."),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade700,),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RansomwarePage()),
                  );
                },
                child: const Text("Back to Ransomware Module",style: TextStyle(
                  fontSize: 16, color: Colors.white,)),
              ),
            ],
          );
        case 'Malware':
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildHeading("Malware (Refresher)"),
              const Text(
                  "You are most likely to be a victim of Malware.\nLet’s fix this."),
              buildHeading("PREVENTION"),
              buildBullet("Keep your system up-to-date."),
              buildBullet("Download only from legitimate sources; avoid piracy."),
              buildBullet("Have antivirus installed and active."),
              buildHeading("DETECTION"),
              buildBullet("Watch for slow computer performance."),
              buildBullet("Check for unknown programs running in the background (Ctrl+Shift+Esc → Task Manager)."),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade700,),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MalwarePage()),
                  );
                },
                child: const Text("Back to Malware Module", style: TextStyle(
                fontSize: 16, color: Colors.white,)

      ),
              ),
            ],
          );
        default:
          return const Text("No info available for this category.");
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text('$category Info', style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blueGrey.shade800,iconTheme: const IconThemeData(color: Colors.white),),
      backgroundColor: Colors.blueGrey.shade50,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(child: content()),
      ),
    );
  }
}
