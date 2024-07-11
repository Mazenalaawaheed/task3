import 'package:flutter/material.dart';
import 'package:app6/screens/scorescreen.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    super.key,
    required this.answer,
  });
  final String answer;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScoreScreen(),
                ),
              );
            },
            child: Text(
              answer,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}