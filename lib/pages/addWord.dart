import 'package:flutter/material.dart';

class AddWord extends StatefulWidget {
  const AddWord({Key? key}) : super(key: key);

  @override
  _AddWordState createState() => _AddWordState();
}

class _AddWordState extends State<AddWord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          children: [
            Container(
              height: 40.0,
              width: 40.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200.0),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/myWords.jpg')),
              ),
            ),
            SizedBox(width: 10),
            Text(
              'Свои слова',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: 16),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'English word',
                                fillColor: Colors.white,
                                filled: true),
                          ),
                          SizedBox(height: 0.5),
                          TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Transcription (optional)',
                                fillColor: Colors.white,
                                filled: true),
                          ),
                          SizedBox(height: 0.5),
                          TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Translation',
                                fillColor: Colors.white,
                                filled: true),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          'assets/image.jpg',
                          fit: BoxFit.cover,
                          height: 90,
                          width: 160,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                    width: 32,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(
                      onPressed: () {},
                      child: Text("NEW EXAMPLE"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
