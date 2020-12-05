
import 'package:flutter/material.dart';
class SimpleDice extends StatefulWidget {
  @override
  _SimpleLevelState createState() => _SimpleLevelState();
}

class _SimpleLevelState extends State<SimpleDice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Simple Dice'),
      ),
    );
  }
}