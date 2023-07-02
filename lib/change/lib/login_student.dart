import 'package:attendane_app/register_student.dart';
import 'package:attendane_app/yourSubjects.dart';
import 'package:flutter/material.dart';

class login_student extends StatefulWidget {
  login_student({Key? key, this.title}) : super(key: key);
  Color c1 = const Color(0x4F000A3F);
  final String? title;
  @override
  _login_studentState createState() => _login_studentState();
}

class _login_studentState extends State<login_student> {
  int selectedValue = 1;
  final _globalKey = GlobalKey<FormState>();

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

  Widget _createAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => register_student()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 0),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Don\'t have an account ?',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xff0a3f4f),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Register',
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
      child: Image.asset('assetss/loginnow.png'),
    );
  }

  Widget _sizedbox2() {
    return SizedBox(
      height: 30,
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
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
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
                        SizedBox(height: height * .1),
                        _backButton(),
                        _sizedbox2(),
                        _title(),
                        _sizedbox2(),
                        _academycode(),
                        _sizedbox2(),
                        _submitButton(),
                        _createAccountLabel(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
