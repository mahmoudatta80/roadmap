import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:roadmap/db_helper/cubit/cubit.dart';
import 'package:roadmap/hello/test_firebase.dart';
import 'package:roadmap/state_management/user_information.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
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

// this method to upload image from assets before display the screen to avoid any error
// @override
// void didChangeDependencies() {
//   super.didChangeDependencies();
//   precacheImage(const AssetImage('assets/images/111.jpg'), context);
// }

//to get update and push your updates
//git add .
//git commit
//git pull
//git push
