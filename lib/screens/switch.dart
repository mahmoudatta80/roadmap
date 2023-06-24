import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({Key? key}) : super(key: key);

  @override
  State<SwitchScreen> createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool status = false;
  change(value) {
    setState(() {
      status = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Switch(
            value: status,
            onChanged: (value) {
              change(value);
            },
            activeColor: Colors.deepOrange,
          ),
        ),
      ),
    );
  }
}
