import 'package:flutter/material.dart';
import 'adaptive_quiz.dart';

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
    final result = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (_) => TopicPage(topicName: topics[index]),
      ),
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
      appBar: AppBar(title: const Text('Cyber Quiz App')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text('Topics:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),

            for (int i = 0; i < topics.length; i++)
              ListTile(
                title: Text(topics[i]),
                leading: Checkbox(
                  value: topicsRead[i],
                  onChanged: null,
                ),
                onTap: () => openTopicPage(i),
              ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: markAllAsRead,
                  child: const Text('Mark all as read'),
                ),
                ElevatedButton(
                  onPressed: allTopicsRead
                      ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AdaptiveQuiz(),
                      ),
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

class TopicPage extends StatelessWidget {
  final String topicName;

  const TopicPage({super.key, required this.topicName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(topicName)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Expanded(
              child: Center(
                child: Text(
                  'blah blah',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: const Text('Mark as Read'),
            ),
          ],
        ),
      ),
    );
  }
}