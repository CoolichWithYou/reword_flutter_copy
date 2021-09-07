import 'package:flutter/material.dart';
import 'package:reword_flutter_copy/data/words.dart';
import 'package:tcard/tcard.dart';

// List<String> images = [
//   'https://vmebel.ru/upload/iblock/2e6/2e61bc0ccd1d3fcd3eebe281541c7ee6.jpg',
// ];

List<Widget> cards = List.generate(
  words.length,
  (int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 17),
            blurRadius: 23.0,
            spreadRadius: -13.0,
            color: Colors.black54,
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              Text('Memorizing new word'),
              SizedBox(
                height: 8,
              ),
              Text('${(words[index].dictionary)}'),
              SizedBox(
                height: 8,
              ),
              Text('${(words[index].title)}'),
              SizedBox(
                height: 8,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.network(
                  words[index].image,
                  fit: BoxFit.cover,
                  height: 90,
                  width: 160,
                ),
              ),
              SizedBox(
                height: 64,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: SizedBox(
                      width: 75.0,
                      height: 75.0,
                      child: RaisedButton(
                          onPressed: () {}, child: Icon(Icons.keyboard)),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: SizedBox(
                      width: 75.0,
                      height: 75.0,
                      child: RaisedButton(
                          onPressed: () {}, child: Icon(Icons.remove_red_eye)),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: SizedBox(
                        width: 75.0,
                        height: 75.0,
                        child: RaisedButton(
                            onPressed: () {}, child: Icon(Icons.window))),
                  ),
                ],
              ),
              SizedBox(
                height: 64,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Got it'),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Missed it'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  },
);

class Card2 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Card2> {
  TCardController _controller = TCardController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TCard(
        cards: cards,
        size: Size(360, 480),
        controller: _controller,
        onForward: (index, info) {
          print(index);
        },
        onBack: (index, info) {
          print(index);
        },
      ),
    );
  }
}
