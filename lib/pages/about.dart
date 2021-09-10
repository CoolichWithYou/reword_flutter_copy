import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'About',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Text("English app"),
          SizedBox(height: 16),
          Text("This app helps to effectively memorize English words."),
          SizedBox(height: 16),
          Text(
              "Words are memorised using the spaced-repetition technique. Repetitions are scheduled based on Hermann Ebbinghaus' forgetting curve."),
          SizedBox(height: 16),
          Text(
              "It is recommended to use the app at least twice a day, with regular breaks every few hours."),
          SizedBox(height: 16),
          Text("Copy author - github/CoolichWithYou"),
        ],
      ),
    );
  }
}
