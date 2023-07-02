import 'package:flutter/material.dart';

class DrobBut extends StatefulWidget {
  const DrobBut({Key? key}) : super(key: key);

  @override
  State<DrobBut> createState() => _DrobButState();
}

class _DrobButState extends State<DrobBut> {
  int? selectedItem = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          DropdownButton<int>(
              icon: const Icon(Icons.arrow_drop_down_circle_rounded,
                  color: const Color(0xff1f7a8c)),
              value: selectedItem,
              items: const [
                DropdownMenuItem(
                  value: 1,
                  child: Text(
                    "1   ",
                    style: TextStyle(color: Color(0xff0a3f4f)),
                  ),
                ),
                DropdownMenuItem(
                  value: 2,
                  child: Text(
                    "2",
                    style: TextStyle(color: Color(0xff0a3f4f)),
                  ),
                ),
                DropdownMenuItem(
                  value: 3,
                  child: Text(
                    "3   ",
                    style: TextStyle(color: Color(0xff0a3f4f)),
                  ),
                ),
                DropdownMenuItem(
                  value: 4,
                  child: Text(
                    "4   ",
                    style: TextStyle(color: Color(0xff0a3f4f)),
                  ),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  selectedItem = value;
                });
              }),
        ],
      ),
    );
  }
}
