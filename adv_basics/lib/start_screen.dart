import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(153, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(height: 100),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Color.fromARGB(234, 227, 226, 231),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 10),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.arrow_right),
          ),
        ],
      ),
    );
  }
}
