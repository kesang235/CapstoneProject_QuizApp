import 'package:flutter/material.dart';
import 'adaptive_quiz.dart';
import 'chapters.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> topics = ['Phishing', 'Malware', 'Ransomware'];
  late List<bool> topicsRead;

  @override
  void initState() {
    super.initState();
    topicsRead = List<bool>.filled(topics.length, false);
  }

  bool get allTopicsRead => topicsRead.every((e) => e);

  void markAllAsRead() {
    setState(() {
      for (int i = 0; i < topicsRead.length; i++) {
        topicsRead[i] = true;
      }
    });
  }

  void openTopicPage(int index) async {
    Widget page;
    switch (topics[index]) {
      case 'Phishing':
        page = const PhishingPage();
        break;
      case 'Malware':
        page = const MalwarePage();
        break;
      case 'Ransomware':
        page = const RansomwarePage();
        break;
      default:
        return;
    }

    final result = await Navigator.push<bool>(
      context,
      MaterialPageRoute(builder: (_) => page),
    );

    if (result == true) {
      setState(() {
        topicsRead[index] = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cyber Quiz App',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey.shade800,
      ),
      backgroundColor: Colors.blueGrey.shade50,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Topics:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            for (int i = 0; i < topics.length; i++)
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.symmetric(vertical: 6),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  leading: Checkbox(
                    value: topicsRead[i],
                    onChanged: null,
                  ),
                  title: Text(
                    topics[i],
                    style: const TextStyle(fontSize: 18),
                  ),
                  onTap: () => openTopicPage(i),
                ),
              ),

            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade600,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                  ),
                  onPressed: markAllAsRead,
                  child: const Text('Mark all as read'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade600,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    textStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  onPressed: allTopicsRead
                      ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AdaptiveQuiz()),
                    );
                  }
                      : null,
                  child: const Text('Start Quiz'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
