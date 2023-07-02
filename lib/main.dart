import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:roadmap/bmi_calculator/bmi_home_screen.dart';
import 'package:roadmap/custom_details/custom_details_view.dart';
import 'package:roadmap/db_helper/cubit/cubit.dart';
import 'package:roadmap/db_helper/db_view.dart';
import 'package:roadmap/hello/test_firebase.dart';
import 'package:roadmap/map_sample/map_sample.dart';
import 'package:roadmap/screens/bottom_nav_bar.dart';
import 'package:roadmap/screens/geo_locator.dart';
import 'package:roadmap/screens/swiper.dart';
import 'package:roadmap/screens/switch.dart';
import 'package:roadmap/screens/text_rich.dart';
import 'package:roadmap/state_management/register.dart';
import 'package:roadmap/state_management/user_information.dart';

import 'hello/drop_but.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  //BmiCalculator b1 = BmiCalculator();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyModel>(
      create: (BuildContext context) => MyModel(),
      child: BlocProvider(
        create: (BuildContext context) => MyTestCubit()..readMyDb(),
        child: MaterialApp(
          theme: ThemeData(
            hintColor: Colors.red
          ),
          debugShowCheckedModeBanner: false,
          home: const NewTest(),
        ),
      ),
    );
  }
}
