import 'package:flutter/material.dart';
import 'package:myapp/questions_screen.dart';
 
class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(255, 142, 20, 148).withOpacity(0.6),
          ),
          const SizedBox(height: 30),
          const Text(
            'Learn flutter the fun way!',
            style: TextStyle(color: Color.fromARGB(255, 142, 20, 148)),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const QuestionsScreen()),
              );
            },
            icon: Icon(
              Icons.arrow_right_alt,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
            label: const Text(
              'Start Quiz',
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
        ],
      ),
    );
  }
}
 