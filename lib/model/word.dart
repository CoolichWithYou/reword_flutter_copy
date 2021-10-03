//import 'package:flutter/cupertino.dart';

class Word {
  String dictionary;
  String image = "assets/default.png";
  String title;
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
