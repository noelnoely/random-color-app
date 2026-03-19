import 'package:flutter/material.dart';
import 'package:random_color_app/random_color_page.dart';

/// Root widget of the application
class RandomColorApp extends StatelessWidget {
  /// Creates the application widget
  const RandomColorApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RandomColorPage(),
    );
  }
}
