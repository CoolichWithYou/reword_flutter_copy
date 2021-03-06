import 'package:flutter/material.dart';
import 'package:reword_flutter_copy/pages/learnNewWords.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'ReviewWords.dart';
import 'categories.dart';

class Learn extends StatefulWidget {
  const Learn({Key? key}) : super(key: key);

  @override
  _LearnState createState() => _LearnState();
}

class _LearnState extends State<Learn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: ListView(
        children: [
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Spaced repetition',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ),
              SizedBox(height: 16.0),
              ButtonTheme(
                minWidth: 200.0,
                height: 75.0,
                child: RaisedButton(
                  elevation: 0,
                  hoverElevation: 0,
                  focusElevation: 0,
                  highlightElevation: 0,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Scaffold(
                          appBar: AppBar(
                            iconTheme: IconThemeData(color: Colors.black),
                            title: Text(
                              'Categories selection',
                              style: TextStyle(color: Colors.black),
                            ),
                            backgroundColor: Colors.white,
                          ),
                          body: Categories(),
                        ),
                      ),
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  child: Row(
                    children: [
                      Icon(
                        Icons.list,
                        color: Colors.black,
                      ),
                      Text(
                        '   0 category chosen',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  color: Colors.white,
                ),
              ),
              ButtonTheme(
                minWidth: 200.0,
                height: 75.0,
                child: RaisedButton(
                  elevation: 0,
                  hoverElevation: 0,
                  focusElevation: 0,
                  highlightElevation: 0,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LearnNewWords()));
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.plus_one,
                        color: Colors.red,
                      ),
                      Text(
                        '   Learn new words',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  color: Colors.white,
                ),
              ),
              ButtonTheme(
                minWidth: 200.0,
                height: 75.0,
                child: RaisedButton(
                  elevation: 0,
                  hoverElevation: 0,
                  focusElevation: 0,
                  highlightElevation: 0,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ReviewWords()));
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.repeat,
                        color: Colors.amber,
                      ),
                      Text(
                        '   Review words',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  color: Colors.white,
                ),
              ),
              ButtonTheme(
                minWidth: 200.0,
                height: 75.0,
                child: RaisedButton(
                  elevation: 0,
                  hoverElevation: 0,
                  focusElevation: 0,
                  highlightElevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(20))),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.light,
                        color: Colors.blue,
                      ),
                      Text(
                        '   Mixed mode',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Extra modes (do not affect your stats)',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ),
              SizedBox(height: 16.0),
              ButtonTheme(
                minWidth: 200.0,
                height: 75.0,
                child: RaisedButton(
                  elevation: 0,
                  hoverElevation: 0,
                  focusElevation: 0,
                  highlightElevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20))),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.repeat,
                        color: Colors.green,
                      ),
                      Text(
                        '   Browse flashcards',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  color: Colors.white,
                ),
              ),
              ButtonTheme(
                minWidth: 200.0,
                height: 75.0,
                child: RaisedButton(
                  elevation: 0,
                  hoverElevation: 0,
                  focusElevation: 0,
                  highlightElevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(20))),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.car_repair_sharp,
                        color: Colors.black,
                      ),
                      Text(
                        '   Hands-free mode',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                height: 440,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Text(
                          'Period: ',
                          style: TextStyle(fontSize: 16),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'in develop',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 16),
                            ))
                      ]),
                    ),
                    SfCartesianChart(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Words being memorized: 0',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
