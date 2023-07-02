import 'dart:developer';
import 'package:attendane_app/login_student.dart';
import 'package:attendane_app/yourSubjects.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

class register_student extends StatefulWidget {
  register_student({Key? key, this.title}) : super(key: key);
  Color c1 = const Color(0x4F000A3F);
  final String? title;
  @override
  _register_studentState createState() => _register_studentState();
}

class _register_studentState extends State<register_student> {
  final _globalKey = GlobalKey<FormState>();

  int selectedValue = 1;

  Widget _backButton() {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: []);
  }

  Widget _submitButton() {
    return Container(
      height: 60,
      width: 170,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          backgroundColor: const Color(0xff1F7A8C),
        ),
        onPressed: () {
          if (_globalKey.currentState!.validate()) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => yourSubjects()));
          }
        },
        child: const Text(
          'Confirm',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _loginAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => login_student()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Already have an account ?',
              style: TextStyle(
                  color: Color(0xff0a3f4f),
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Login',
              style: TextStyle(
                  color: Color(0xff1F7A8C),
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return Container(
      child: Image.asset('assetss/now.png'),
      height: 270,
    );
  }

  Widget _sizedbox() {
    return SizedBox(
      height: 10,
    );
  }

  Widget _academycode() {
    return Column(
      children: <Widget>[
        TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return "Student name must not be empty";
            } else if (value.length < 3) {
              return "Student name must be at least 3 characters";
            }
          },
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffededed),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff01F7A8C), width: 1.0),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: '  Your Name',
              hintStyle: TextStyle(
                color: Color(0xff0a3f4f),
              )),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return "College Code must not be empty";
            } else if (value != '#fci21') {
              return "You must the correct college code";
            }
          },
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffededed),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff01F7A8C), width: 1.0),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: '  College Code',
              hintStyle: TextStyle(
                color: Color(0xff0a3f4f),
              )),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return "Academy code must not be empty";
            } else if (value.length != 14) {
              return "Academy code must be 14 numbers";
            }
          },
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffededed),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff01F7A8C), width: 1.0),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: '  Academy Code',
              hintStyle: TextStyle(
                color: Color(0xff0a3f4f),
              )),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return "Academy Year must not be empty";
            }
          },
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffededed),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff01F7A8C), width: 1.0),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: '  Academy Year',
              hintStyle: TextStyle(
                color: Color(0xff0a3f4f),
              )),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return "Section Number must not be empty";
            }
          },
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffededed),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff01F7A8C), width: 1.0),
                borderRadius: BorderRadius.circular(15),
              ),
              hintText: '  Section Number',
              hintStyle: TextStyle(
                color: Color(0xff0a3f4f),
              )),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: Container(),
            ),
            // child: BezierContainer()),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Form(
                  key: _globalKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: height * .05),
                      _backButton(),
                      _title(),
                      _academycode(),
                      _submitButton(),
                      _loginAccountLabel(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
