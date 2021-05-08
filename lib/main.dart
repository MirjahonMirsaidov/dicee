import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Dicee'),
      ),
      backgroundColor: Colors.red,
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 6;
  int rightDiceNumber = 6;

  void randomizeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: randomizeDice,
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: randomizeDice,
            ),
          )
        ],
      ),
    );
  }
}
