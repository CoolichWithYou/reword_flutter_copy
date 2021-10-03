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
      appBar: AppBar(
        title: Row(
          children: [],
        ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(height: 16),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'English word',
                      ),
                    ),
                    SizedBox(height: 0.5),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Transcription (optional)',
                      ),
                    ),
                    SizedBox(height: 0.5),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Translation',
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
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
                        child: Image.asset(
                          'assets/image.jpg',
                          fit: BoxFit.cover,
                          height: 90,
                          width: 160,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    TextButton(onPressed: () {}, child: Text("NEW EXAMPLE")),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
