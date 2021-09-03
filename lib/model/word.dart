//import 'package:flutter/cupertino.dart';

class Word {
  final String dictionary;
  final String image;
  final String title;
  bool isKnow;
  bool isSwipedOff;

  Word({
    required this.dictionary,
    required this.image,
    required this.title,
    this.isKnow = false,
    this.isSwipedOff = false,
  });
}
