import 'package:flutter/material.dart';
import 'package:app6/screens/categoryscreen.dart';
import 'package:app6/screens/welcome.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Nice Work you finished your questions and here is your score :',
              textAlign: TextAlign.center,
            ),
            const Text(
              '19/20',

              style: TextStyle(
                  color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const CategoryScreen()),
                  ModalRoute.withName('/'),
                );
              },
              child: const Text(
                'Play Again?',
                style: TextStyle(color: Colors.black),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute<void>(
                      builder: (BuildContext context) => const WelcomePage()),
                  ModalRoute.withName('/'),
                );
              },
              child: const Text(
                'Exit',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}