import 'package:flutter/material.dart';

class Vocabulary extends StatefulWidget {
  const Vocabulary({Key? key}) : super(key: key);

  @override
  _VocabularyState createState() => _VocabularyState();
}

class _VocabularyState extends State<Vocabulary> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Vocabulary page'),
    );
  }
}
