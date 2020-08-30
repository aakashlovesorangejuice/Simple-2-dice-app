import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(DiceApp());
}
class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dice App',
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Modify(),
      ),
    );
  }
}
class Modify extends StatefulWidget {
  @override
  _ModifyState createState() => _ModifyState();
}

class _ModifyState extends State<Modify> {
  int leftDice=1;
  int rightDice=4;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDice=Random().nextInt(6)+1;
                  rightDice=Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDice=Random().nextInt(6)+1;
                  rightDice=Random().nextInt(6)+1;
                });

              },
              child: Image.asset('images/dice$rightDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}



