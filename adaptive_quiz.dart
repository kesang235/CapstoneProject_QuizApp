import 'package:flutter/material.dart';
import 'question_bank.dart';
import 'clueBank.dart';
import 'difficulty_tag.dart';
import 'dart:math';
import 'additional_info.dart';

class AdaptiveQuiz extends StatefulWidget {
  const AdaptiveQuiz({Key? key}) : super(key: key);

  @override
  _AdaptiveQuizState createState() => _AdaptiveQuizState();
}

class _AdaptiveQuizState extends State<AdaptiveQuiz> {
  final analyzer = DifficultyAnalyzer();

  int currentLevel = 0; // 0=Easy,1=Medium,2=Hard
  int questionsAsked = 0;
  int score = 0;
  bool quizCompleted = false;
  bool isLoading = false;

  List<Bank> unaskedQuestions = [];
  Bank? currentQuestion;

  Map<String, int> totalPerCategory = {};
  Map<String, int> wrongPerCategory = {};

  @override
  void initState() {
    super.initState();
    _initializeQuestions();
  }

  void _initializeQuestions() {
    unaskedQuestions = List.from(questionBank);
    unaskedQuestions.shuffle(Random());
    _loadNextQuestion();
  }

  Future<void> _loadNextQuestion() async {
    if (unaskedQuestions.isEmpty) {
      setState(() {
        quizCompleted = true;
      });
      return;
    }

    setState(() {
      isLoading = true;
    });

    Bank? selected;

    while (selected == null && unaskedQuestions.isNotEmpty) {
      List<Bank> batch = [];
      for (int i = 0; i < 3 && unaskedQuestions.isNotEmpty; i++) {
        int idx = Random().nextInt(unaskedQuestions.length);
        batch.add(unaskedQuestions.removeAt(idx));
      }

      await Future.forEach(batch, (Bank q) async {
        if (q.difficulty == null || q.difficulty!.isEmpty) {
          final result = await analyzer.analyze(q.question);
          q.difficulty = result.category;
        }
      });

      String levelStr = _difficultyFromLevel(currentLevel);
      List<Bank> matching = batch.where((q) => q.difficulty == levelStr).toList();

      if (matching.isNotEmpty) {
        selected = matching[Random().nextInt(matching.length)];
      }

      batch.clear();
    }

    setState(() {
      currentQuestion = selected;
      isLoading = false;
    });
  }

  void _nextQuestion(bool wasCorrect) {
    if (quizCompleted || currentQuestion == null) return;

    final cat = currentQuestion!.category;
    totalPerCategory[cat] = (totalPerCategory[cat] ?? 0) + 1;
    if (!wasCorrect) {
      wrongPerCategory[cat] = (wrongPerCategory[cat] ?? 0) + 1;
    }

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

    _loadNextQuestion();
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

  Color _scoreColor() {
    if (score < 5) return Colors.red;
    if (score <= 7) return Colors.deepOrangeAccent;
    if (score <= 9) return Colors.green;
    return Colors.yellowAccent;
  }

  Color _difficultyColor() {
    switch (currentLevel) {
      case 0:
        return Colors.green;
      case 1:
        return Colors.orange;
      case 2:
        return Colors.red;
      default:
        return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (quizCompleted) {
      final feedbackCategories = <String>[];
      totalPerCategory.forEach((cat, total) {
        final wrong = wrongPerCategory[cat] ?? 0;
        final percentWrong = (wrong / total) * 100;
        if (percentWrong > 30) feedbackCategories.add(cat);
      });

      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Quiz Results',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueGrey.shade800,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey.shade50,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Score: $score / 10',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: _scoreColor(),
                ),
              ),
              const SizedBox(height: 20),
              if (feedbackCategories.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      const Text(
                        'Focus on improving:',
                        style: TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                      ...feedbackCategories.map((c) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black87,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              side: const BorderSide(
                                  color: Colors.blueGrey, width: 1),
                              elevation: 2,
                            ),
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) =>
                                    AdditionalInfoPage(category: c),
                              ),
                            ),
                            child: Text(
                              c,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      )),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green.shade700,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 32),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 3,
                        ),
                        onPressed: () => Navigator.pop(context),
                        child: const Text(
                          'Home',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cyber Security Quiz',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey.shade800,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.blueGrey.shade50,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: currentQuestion == null
                ? const SizedBox.shrink()
                : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Question ${questionsAsked + 1} of 10',
                    style: const TextStyle(fontSize: 18)),
                const SizedBox(height: 10),
                Text('Difficulty: ${_difficultyFromLevel(currentLevel)}',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: _difficultyColor())),
                const SizedBox(height: 20),
                Text(currentQuestion!.question,
                    style: const TextStyle(fontSize: 20)),
                const SizedBox(height: 20),
                ...currentQuestion!.options.asMap().entries.map((entry) {
                  int idx = entry.key;
                  String option = entry.value;
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black87,
                          padding:
                          const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          side: const BorderSide(
                              color: Colors.blueGrey, width: 1),
                          elevation: 2,
                        ),
                        onPressed: () =>
                            _nextQuestion(idx == currentQuestion!.answer),
                        child: Text(option,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                  );
                }).toList(),

                const SizedBox(height: 20),
                Text('Score: $score',
                    style: const TextStyle(fontSize: 18)),
              ],
            ),
          ),
          if (isLoading)
            Container(
              color: Colors.black54,
              child: const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(16),
                backgroundColor: Colors.blueGrey.shade800,
              ),
              onPressed: currentQuestion == null
                  ? null
                  : () => _showHint(context, currentQuestion!.question),
              child: const Icon(Icons.lightbulb, color: Colors.yellow),
            ),
          ),
        ],
      ),
    );
  }
}
