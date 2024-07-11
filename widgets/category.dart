import 'package:flutter/material.dart';
import 'package:app6/screens/quizscreen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categoryName,
    required this.categoryColor,
  });
  final String categoryName;
  final Color categoryColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const QuizScreen(),
          ),
        );
      },
      child: Expanded(
        child: Container(
          height: MediaQuery.of(context).size.height * 1 / 3,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: categoryColor),
          child: Center(
            child: Text(
              categoryName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}