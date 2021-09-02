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
                    'https://sun9-15.userapi.com/impg/o6Ep125lAXsy--KTup_d2SEy4On9viTFSaOG_Q/8_QHw802K4U.jpg?size=146x142&quality=96&sign=2533eff9d1f75c2dd5fd18db79f2571d&type=album',
                    'Свои слова'),
                _createCategoriesObject(
                    'https://sun9-37.userapi.com/impg/0Vx8eyezUO5dgitJDc-LQQucql-4G5-61FY1Rg/i1mk0hwV_bQ.jpg?size=144x145&quality=96&sign=1cf83ee2acaa3dd26794d310a6ce446b&type=album',
                    'Анатомия'),
                _createRewordDivider(),
                _createCategoriesObject(
                    'https://sun9-49.userapi.com/impg/aQsvbNzfq1N42ZyFTb6K-Z4zV_rRQLkliL3Veg/RTd4A8KChGw.jpg?size=143x143&quality=96&sign=4567023e150ea2a7ac0defe40304219b&type=album',
                    'Археология'),
                _createRewordDivider(),
                _createCategoriesObject(
                    'https://sun9-70.userapi.com/impg/l8P8cjhTaOKpn6Kh9Tl9Ssj1enGZDAJu3UzlIQ/amYbVYQkAJo.jpg?size=143x141&quality=96&sign=a7d5e02f6407a192820dcdf26de2b9d9&type=album',
                    'Архитектура'),
                _createRewordDivider(),
                _createCategoriesObject(
                    'https://sun9-41.userapi.com/impg/I8M5oSiwndDnwU9xomp_lj640_m-By29JfNHhQ/TltojdEhWYc.jpg?size=144x145&quality=96&sign=cf8b62fd375b80c939fc86fffd8b567a&type=album',
                    'Базовые глаголы'),
                _createRewordDivider(),
                _createCategoriesObject(
                    'https://sun9-68.userapi.com/impg/BEuxgB39WglYhhhdzCg0A08372o5piafL3wlhg/0OPxZOeFjo4.jpg?size=147x144&quality=96&sign=68113df96fe0f01ec2f83cb917e5cb12&type=album',
                    'Бизнес'),
                _createRewordDivider(),
                _createCategoriesObject(
                    'https://sun9-12.userapi.com/impg/MRliHyoOeoVzWJ2pl2xQsFv4gpRmeUZVVcuIWA/GNBa--bOv7Y.jpg?size=145x142&quality=96&sign=88907057339d548e08b4cd69f8c1a8fe&type=album',
                    'Внешность'),
                _createRewordDivider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
