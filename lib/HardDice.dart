import 'package:flutter/material.dart';

class HardDice extends StatefulWidget {
  @override
  _SimpleLevelState createState() => _SimpleLevelState();
}

class _SimpleLevelState extends State<HardDice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Hard Dice'),
      ),
    );
  }
}
