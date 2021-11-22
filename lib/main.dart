import 'package:flutter/material.dart';

import 'Dashboard.dart';
import 'calculator/calculator.dart';
import 'railSeba/rail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: calculator(),
    );
  }
}
