import 'package:flutter/material.dart';
import 'package:roadmap/bmi_calculator/bmi_home_screen.dart';

void main() {

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  BmiCalculator b1 = BmiCalculator();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiCalculator(),
    );
  }
}