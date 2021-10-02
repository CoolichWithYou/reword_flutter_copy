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
                fit: BoxFit.cover, image: AssetImage('$imageURL')),
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

  Padding _createRewordDivider() {
    return Padding(
      padding: const EdgeInsets.only(left: 60),
      child: Divider(
        height: 1,
        color: Colors.grey[500],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: ListView(
          padding: const EdgeInsets.only(top: 10.0),
          children: [
            _createCategoriesObject('assets/myWords.jpg', 'Свои слова')
          ],
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height / 15,
        width: MediaQuery.of(context).size.width / 3,
        margin: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200.0),
          color: Colors.blue,
        ),
        child: TextButton(
          onPressed: () {},
          child: Text(
            '+ word',
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
      )
    ]);
  }
}
