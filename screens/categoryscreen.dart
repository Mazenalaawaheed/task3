import 'package:flutter/material.dart';
import 'package:app6/widgets/category.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});
  final List namesList = const ['IQ quiz', 'sports quiz', 'science quiz'];
  final List colorsList = const [Color.fromARGB(255, 50, 5, 5), Color.fromARGB(255, 0, 255, 234), Color.fromARGB(255, 255, 0, 225)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (int i = 0; i < namesList.length; i++)
            CategoryCard(
              categoryName: namesList[i],
              categoryColor: colorsList[i],
            ),
        ],
      ),
    );
  }
}