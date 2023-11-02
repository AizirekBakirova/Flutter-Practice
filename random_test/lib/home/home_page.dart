import 'dart:math';

import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List<Question> questions = [
    Question('Can Flutter create a mobile app?', 'true'),
    Question('Are there 7 regions in Kyrgyzstan?', 'true'),
    Question('Is North America the smallest continent?', 'false'),
    Question('Was Osh 3000 years old?', 'true'),
    Question('Can a crocodile climb a tree?', 'false'),
    Question('Is the planet Eath the largest?', 'false')
  ];
  int correctQuestionIndex = Random().nextInt(6);
  int ball = 0;

  void checkAnswer(String answer) {
    if (questions[correctQuestionIndex].IsCorrect(answer)) {
      setState(() {
        ball++;
      });
    }
    setState(() {
      correctQuestionIndex = Random().nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Question: ${correctQuestionIndex + 1}',
              style: TextStyle(fontSize: 35),
            ),
            Text(
              'Point: $ball',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 110,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  questions[correctQuestionIndex].questionText,
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => checkAnswer('true'),
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        'True',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () => checkAnswer('false'),
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'False',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class Question {
  String questionText;
  String correctAnswer;
  Question(this.questionText, this.correctAnswer);
  bool IsCorrect(String answer) {
    return answer.toLowerCase() == correctAnswer.toLowerCase();
  }
}
