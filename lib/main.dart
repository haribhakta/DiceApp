import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dice App"),
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int firstdice = 1;
  int seconddice = 6;
  int a = 1;

  void changeDiceNumber() {
    setState(() {
      if (a == 1)
        firstdice = Random().nextInt(6) + 1;
      else
        seconddice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    a = 1;
                    changeDiceNumber();
                  },
                  child: Image.asset("assets/images/dice$firstdice.png"),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    a = 2;
                    changeDiceNumber();
                  },
                  child: Image.asset("assets/images/dice$seconddice.png"),
                ),
              ),
            ],
          ),
        ),
        Text(
          "You Clicked Dice No $a",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
