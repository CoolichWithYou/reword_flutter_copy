import 'package:flutter/material.dart';
import 'package:tcard/tcard.dart';

List<String> images = [
  'https://vmebel.ru/upload/iblock/2e6/2e61bc0ccd1d3fcd3eebe281541c7ee6.jpg',
];

List<Widget> cards = List.generate(
  images.length,
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
        child: Column(
          children: [
            Text('Memorizing new word'),
            SizedBox(
              height: 8,
            ),
            Text('Oxford 3000 - B1'),
            SizedBox(
              height: 8,
            ),
            Text('Полка'),
            SizedBox(
              height: 8,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                images[index],
                fit: BoxFit.cover,
                height: 90,
                width: 160,
              ),
            ),
            SizedBox(
              height: 64,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(onPressed: () {}, child: Icon(Icons.keyboard)),
                RaisedButton(
                    onPressed: () {}, child: Icon(Icons.remove_red_eye)),
                RaisedButton(onPressed: () {}, child: Icon(Icons.window)),
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
