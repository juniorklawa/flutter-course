import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          'Dicee',
        ),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 3;
  int rightDiceNumber = 5;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
            onPressed: () => setRandom(),
            child: Image.asset('images/dice$leftDiceNumber.png'),
          )),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
              child: FlatButton(
            onPressed: () => setRandom(),
            child: Image.asset('images/dice$rightDiceNumber.png'),
          )),
        ],
      ),
    );
  }

  setRandom() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }
}
