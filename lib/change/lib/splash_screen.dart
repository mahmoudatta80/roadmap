import 'package:attendane_app/login_student.dart';
import 'package:attendane_app/register_student.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => login_student()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/backgroundd-01.png'),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Container(
                child: Image.asset(
                  'assetss/logoo.png',
                  height: MediaQuery.of(context).size.height * 0.6,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                child: Image.asset(
                  'assetss/حضرني.png',
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
