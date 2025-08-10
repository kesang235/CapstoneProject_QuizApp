import 'package:flutter/material.dart';
import 'question_bank.dart';
import 'clueBank.dart';
import 'main.dart';

class AdaptiveQuiz extends StatefulWidget {
  const AdaptiveQuiz({Key? key}) : super(key: key);

  @override
  _AdaptiveQuizState createState() => _AdaptiveQuizState();
}

class _AdaptiveQuizState extends State<AdaptiveQuiz> {
  final analyzer = DifficultyAnalyzer();
  List<Bank> questionBankShuffled = [];

  int currentLevel = 0; // 0=easy, 1=medium, 2=hard
  int questionsAsked = 0;
  int score = 0;
  bool quizCompleted = false;

  List<Bank> currentBatch = [];
  int currentBatchIndex = 0;

  @override
  void initState() {
    super.initState();
    _initializeQuestions();
  }

  Future<void> _initializeQuestions() async {
    questionBankShuffled = List.from(questionBank);
    questionBankShuffled.shuffle();

    for (final q in questionBankShuffled) {
      final result = await analyzer.analyze(q.question);
      q.difficulty = result.category;
    }

    _loadNextBatch();
  }

  void _loadNextBatch() {
    currentBatch = [];
    currentBatchIndex = 0;

    int pulled = 0;
    for (final q in questionBankShuffled) {
      if (q.difficulty == _difficultyFromLevel(currentLevel) && !currentBatch.contains(q)) {
        currentBatch.add(q);
        pulled++;
        if (pulled == 3) break;
      }
    }

    if (currentBatch.isEmpty) {
      setState(() {
        quizCompleted = true;
      });
    } else {
      setState(() {});
    }
  }

  void _nextQuestion(bool wasCorrect) {
    if (quizCompleted) return;

    if (wasCorrect) {
      if (currentLevel < 2) currentLevel++;
      score++;
    } else {
      if (currentLevel > 0) currentLevel--;
    }

    questionsAsked++;

    if (questionsAsked >= 10) {
      setState(() {
        quizCompleted = true;
      });
      return;
    }

    currentBatchIndex++;

    if (currentBatchIndex >= currentBatch.length) {
      _loadNextBatch();
    } else {
      setState(() {});
    }
  }

  Bank get _currentQuestion {
    if (currentBatch.isEmpty) {
      throw Exception("No questions");
    }
    return currentBatch[currentBatchIndex];
  }

  String _difficultyFromLevel(int level) {
    switch (level) {
      case 0:
        return "Easy";
      case 1:
        return "Medium";
      case 2:
        return "Hard";
      default:
        return "Easy";
    }
  }

  void _showHint(BuildContext context, String question) {
    final lowerQuestion = question.toLowerCase();
    String? matchedHint;

    for (var keyword in clueBank.keys) {
      if (lowerQuestion.contains(keyword)) {
        matchedHint = clueBank[keyword];
        break;
      }
    }

    final snackBar = SnackBar(
      content: Text(matchedHint ?? "No hint"),
      duration: const Duration(seconds: 5),
      behavior: SnackBarBehavior.floating,
    );

    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    if (quizCompleted) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Score: $score / 10',
                style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Home'),
            ),
          ],
        ),
      );
    }

    if (currentBatch.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Cyber Security Quiz')),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Question ${questionsAsked + 1} of 10',
                    style: const TextStyle(fontSize: 18)),
                const SizedBox(height: 10),
                Text('Difficulty: ${_difficultyFromLevel(currentLevel)}',
                    style: const TextStyle(fontSize: 16)),
                const SizedBox(height: 20),
                Text(_currentQuestion.question, style: const TextStyle(fontSize: 20)),
                const SizedBox(height: 20),
                ..._currentQuestion.options.asMap().entries.map((entry) {
                  int idx = entry.key;
                  String option = entry.value;
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: ElevatedButton(
                      onPressed: () => _nextQuestion(idx == _currentQuestion.answer),
                      child: Text(option),
                    ),
                  );
                }).toList(),
                const SizedBox(height: 20),
                Text('Score: $score', style: const TextStyle(fontSize: 18)),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(16),
                backgroundColor: Colors.blueAccent,
              ),
              onPressed: () => _showHint(context, _currentQuestion.question),
              child: const Icon(Icons.lightbulb, color: Colors.yellow),
            ),
          ),
        ],
      ),
    );
  }
}
