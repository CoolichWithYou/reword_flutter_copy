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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('reword'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.phone_android_outlined), title: Text('A')),
          BottomNavigationBarItem(
              icon: Icon(Icons.data_saver_off_outlined), title: Text('B')),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('C'))
        ],
      ),
    );
  }
}
