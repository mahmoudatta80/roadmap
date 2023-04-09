import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roadmap/animation/animation_route.dart';
import 'package:roadmap/animation/page_one.dart';
import 'package:roadmap/animation/page_three.dart';
import 'package:roadmap/bmi_calculator/bmi_home_screen.dart';
import 'package:roadmap/screens/balance_task.dart';
import 'package:roadmap/screens/final_begginer_project.dart';
import 'package:roadmap/screens/gallary.dart';
import 'package:roadmap/screens/home_screen.dart';
import 'package:roadmap/screens/login_screen.dart';
import 'package:roadmap/screens/practical_breek_2.dart';
import 'package:roadmap/screens/register_screen.dart';
import 'package:roadmap/screens/todo_screen.dart';
import 'package:roadmap/screens/training_screen.dart';
import 'package:roadmap/state_management/details.dart';
import 'package:roadmap/state_management/register.dart';
import 'package:roadmap/state_management/user_information.dart';
import 'package:roadmap/state_management/welcome.dart';

void main() {

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  BmiCalculator b1 = BmiCalculator();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyModel>(
      create: (BuildContext context) => MyModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Register(),
      ),
    );
  }
}