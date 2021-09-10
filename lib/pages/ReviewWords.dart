import 'package:flutter/material.dart';
import 'package:reword_flutter_copy/data/words.dart';
import 'package:reword_flutter_copy/pages/swipeCards.dart';

class ReviewWords extends StatefulWidget {
  const ReviewWords({Key? key}) : super(key: key);

  @override
  _ReviewWordsState createState() => _ReviewWordsState();
}

class _ReviewWordsState extends State<ReviewWords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: ReviewCard(),
    );
  }
}
