import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SimpleDice(),
    );
  }
}

class SimpleDice extends StatefulWidget {
  @override
  _SimpleDiceState createState() => _SimpleDiceState();
}

class _SimpleDiceState extends State<SimpleDice> {
  var imageArray = ['1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', '6.jpg'];
  //var random = new Random();
  int randomIntForDiceOne = Random().nextInt(6);
  int randomIntForDiceTwo = Random().nextInt(6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(21, 50, 21, 50),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Text(
                  'The sum is: ' +
                      (randomIntForDiceOne + randomIntForDiceTwo + 2)
                          .toString(),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Image.asset(
                    'image/' + imageArray[randomIntForDiceOne],
                    height: 150,
                    width: 150,
                  ),
                  Image.asset(
                    'image/' + imageArray[randomIntForDiceTwo],
                    height: 150,
                    width: 150,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: RaisedButton(
                  onPressed: changeImage,
                  child: Text('Roll Dice'),
                ),
              )
            ],
          ),
        ));
  }

  void changeImage() {
    setState(() {
      randomIntForDiceOne = Random().nextInt(6);
      randomIntForDiceTwo = Random().nextInt(6);
    });
  }
}
