import 'package:flutter/material.dart';
import 'package:app6/widgets/answers.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});
  final List answers = const ['3', '4', '2', '0'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Text(
          'quiz',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('First Question :'),
            const Text('1+1 ?'),
            for (int i = 0; i < answers.length; i++)
              AnswerCard(
                answer: answers[i],
              ),
          ],
        ),
      ),
    );
  }
}