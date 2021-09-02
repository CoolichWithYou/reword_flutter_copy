import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  TextButton _createCategoriesObject(String imageURL, String description) {
    return TextButton(
      onPressed: () {},
      child: Row(children: [
        Container(
          height: 40.0,
          width: 40.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200.0),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage('$imageURL')),
          ),
        ),
        SizedBox(width: 10),
        Text(
          '$description',
          style: TextStyle(color: Colors.black),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Categories selection',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          ButtonTheme(
            minWidth: 200.0,
            height: 60.0,
            child: Column(
              children: [
                _createCategoriesObject(
                    'https://sun9-12.userapi.com/impg/IV8i6ZI7c6OhKZDqG_ThS5edobsRJc5yNU1uDw/sq3SW4m6LjA.jpg?size=101x105&quality=96&sign=0e5ebef4d6099828b67239752cb3645d&type=album',
                    'Свои слова'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
