import 'dart:math';

import 'package:flutter/material.dart';

/// RandomColorPage shows a text message and changes background color on tap
class RandomColorPage extends StatefulWidget {
  /// Creates the random color page
  const RandomColorPage({super.key});

  @override
  State<RandomColorPage> createState() => _RandomColorPageState();
}

class _RandomColorPageState extends State<RandomColorPage> {
  Color _color = Colors.black;
  final Random _random = Random();
  Color get _textColor =>
      ThemeData.estimateBrightnessForColor(_color) == Brightness.light
      ? Colors.black
      : Colors.white;
  Color _generateRandomColor() {
    const int combination = 256;

    return Color.fromRGBO(
      _random.nextInt(combination),
      _random.nextInt(combination),
      _random.nextInt(combination),
      1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          setState(() {
            _color = _generateRandomColor();
          });
        },
        child: Center(
          child: Text(
            'Hello there',
            style: TextStyle(
              color: _textColor,
            ),
          ),
        ),
      ),
    );
  }
}
