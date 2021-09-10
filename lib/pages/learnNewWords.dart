import 'package:flutter/material.dart';
import 'package:reword_flutter_copy/data/words.dart';
import 'package:reword_flutter_copy/pages/swipeCards.dart';

class LearnNewWords extends StatefulWidget {
  const LearnNewWords({Key? key}) : super(key: key);

  @override
  _LearnNewWordsState createState() => _LearnNewWordsState();
}

class _LearnNewWordsState extends State<LearnNewWords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {});
              },
              color: Colors.grey[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Text('Learn new words'),
            ),
            SizedBox(width: 10),
            RaisedButton(
              onPressed: () {},
              color: Colors.grey[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              child: Text('Spaced repetition'),
            )
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Card2(),
    );
  }
}
