import 'package:flutter/material.dart';

import 'about.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8, right: 8),
      child: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Row(children: [
              Icon(
                Icons.update,
                color: Colors.blue,
              ),
              Container(
                height: 40.0,
                width: 40.0,
              ),
              Text(
                'Full version',
                style: TextStyle(color: Colors.blue),
              ),
            ]),
          ),
          MainButton(Icons.language, 'Other languages'),
          _createRewordDivider(),
          MainButton(Icons.mode_night, 'Night mode'),
          _createRewordDivider(),
          MainButton(Icons.settings_cell, 'Settings'),
          MainButton(Icons.share, 'Share'),
          MainButton(Icons.rate_review, 'Rate'),
          MainButton(Icons.info, 'About'),
          _createRewordDivider(),
          MainButton(Icons.backup, 'Create backup'),
          MainButton(Icons.restore, 'Restore data'),
        ],
      ),
    );
  }
}

Padding _createRewordDivider() {
  return Padding(
    padding: const EdgeInsets.only(left: 60),
    child: Divider(
      height: 1,
      color: Colors.grey[500],
    ),
  );
}

// делаем свой виджет класс
class MainButton extends StatelessWidget {
  // конструктор этого класса, принимающий поле icon
  MainButton(this.icon, this.text);

  // поле icon для нашей иконки
  final IconData icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            if (text == 'About') {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => About()));
            }
          },
          child: Row(children: [
            Icon(
              icon,
              color: Colors.grey[500],
            ),
            Container(
              height: 50.0,
              width: 40.0,
            ),
            Text(
              '$text',
              style: TextStyle(color: Colors.black),
            ),
          ]),
        ),
      ],
    );
  }
}

// Icon(icon),
// Text('text'),

// in children
