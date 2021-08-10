import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              're',
              style: TextStyle(color: Colors.blue),
            ),
            Text(
              'word',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.phone_android_outlined),
              title: Text(
                'Learn',
                style: TextStyle(fontSize: 14),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.data_saver_off_outlined),
              title: Text(
                'Vocabulary',
                style: TextStyle(fontSize: 14),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text(
                'Menu',
                style: TextStyle(fontSize: 14),
              ))
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
