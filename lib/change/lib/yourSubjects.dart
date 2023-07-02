import 'package:attendane_app/Notices_page.dart';
import 'package:attendane_app/contact_us.dart';
import 'package:attendane_app/lab_absence.dart';
import 'package:attendane_app/lec_absence.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class yourSubjects extends StatefulWidget {
  @override
  State<yourSubjects> createState() => _yourSubjectsState();
}

class _yourSubjectsState extends State<yourSubjects> {
  int _selectedOption1 = 1;
  int _selectedOption2 = 1;
  int _selectedOption3 = 1;
  int _selectedOption4 = 1;
  int _selectedOption5 = 1;
  int _selectedOption6 = 1;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = screenHeight / 6;
    final logoHeight = screenHeight / 8;
    final iconWidth = screenWidth / 2.3;
    final cardHeight = screenHeight / 8;
    final cardWidth = screenWidth / 2.3;
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width * 0.75,
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assetss/img_1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Noran Ahmed',
                    style: TextStyle(
                      color: Color.fromRGBO(10, 63, 79, 1.0),
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const ListTile(
                leading:
                    Icon(Icons.school, color: Color.fromRGBO(10, 63, 79, 1.0)),
                title: Text(
                  'Grade: 4',
                  style: TextStyle(
                    color: Color.fromRGBO(10, 63, 79, 1.0),
                    fontSize: 18,
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              const ListTile(
                leading: Icon(Icons.format_list_numbered,
                    color: Color.fromRGBO(10, 63, 79, 1.0)),
                title: Text(
                  'Section: 4',
                  style: TextStyle(
                    color: Color.fromRGBO(10, 63, 79, 1.0),
                    fontSize: 18,
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              const ListTile(
                leading: Icon(Icons.recent_actors,
                    color: Color.fromRGBO(10, 63, 79, 1.0)),
                title: Text(
                  'National ID: 12345678901234',
                  style: TextStyle(
                    color: Color.fromRGBO(10, 63, 79, 1.0),
                    fontSize: 18,
                  ),
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 130, 98, 98),
                thickness: 1,
              ),
              ListTile(
                title: const Text(
                  'Notices',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromRGBO(10, 63, 79, 1.0),
                    decoration: TextDecoration.underline,
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notices_page()));
                },
                leading: const Icon(
                  Icons.notifications,
                  color: Color.fromRGBO(10, 63, 79, 1.0),
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 130, 98, 98),
                thickness: 1,
              ),
              ListTile(
                title: const Text(
                  'Contact us',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromRGBO(10, 63, 79, 1.0),
                    decoration: TextDecoration.underline,
                  ),
                ),
                leading: const Icon(
                  Icons.contact_mail,
                  color: Color.fromRGBO(10, 63, 79, 1.0),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactUs()));
                },
              )
            ],
          ),
        ),
      ),
      body: Builder(
        builder: (context) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: appBarHeight,
                    child: GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: logoHeight,
                                width: screenWidth / 5,
                                child: Image.asset(
                                  "assetss/actor.png",
                                ),
                              ),
                              const Text(
                                'Profile',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF005C6C),
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: logoHeight,
                            width: iconWidth,
                            margin: const EdgeInsets.only(
                              right: 15.0,
                            ),
                            child: Image.asset(
                              "assetss/حضرني.png",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 5.0),
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Image.asset(
                      "assetss/Group 78.png",
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 1.4,
                    margin: const EdgeInsets.only(right: 7, left: 7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(31, 122, 139, 1.0),
                            //background color of dropdown button
                            borderRadius: BorderRadius.circular(
                                20), //border raiuds of dropdown button
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            padding: const EdgeInsets.only(right: 10, left: 5),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<int>(
                                value: _selectedOption1,
                                isExpanded: true,
                                icon: const Icon(Icons.arrow_drop_down_circle),
                                iconSize: 30,
                                elevation: 16,
                                iconEnabledColor: Colors.white,
                                dropdownColor: Colors.white,
                                onChanged: (newValue) {
                                  if(newValue == 2) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                        const page_lec(),
                                      ),
                                    );
                                  }else if(newValue == 3) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                        const Page_section(),
                                      ),
                                    );
                                  }else {
                                    setState(() {
                                      _selectedOption1 = newValue!;
                                    });
                                  }
                                },
                                items: const [
                                  DropdownMenuItem(
                                    value: 1,
                                    child: Text(
                                      'Subject Name1',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 2,
                                    child: Text(
                                      'Lecture',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 3,
                                    child: Text(
                                      'Lab',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(31, 122, 139, 1.0),
                            //background color of dropdown button
                            borderRadius: BorderRadius.circular(
                                20), //border raiuds of dropdown button
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            padding: const EdgeInsets.only(right: 10, left: 5),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<int>(
                                value: _selectedOption2,
                                isExpanded: true,
                                icon: const Icon(Icons.arrow_drop_down_circle),
                                iconSize: 30,
                                elevation: 16,
                                iconEnabledColor: Colors.white,
                                dropdownColor: Colors.white,
                                onChanged: (newValue) {
                                  if(newValue == 2) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                        const page_lec(),
                                      ),
                                    );
                                  }else if(newValue == 3) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                        const Page_section(),
                                      ),
                                    );
                                  }else {
                                    setState(() {
                                      _selectedOption1 = newValue!;
                                    });
                                  }
                                },
                                items: const [
                                  DropdownMenuItem(
                                    value: 1,
                                    child: Text(
                                      'Subject Name2',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 2,
                                    child: Text(
                                      'Lecture',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 3,
                                    child: Text(
                                      'Lab',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(31, 122, 139, 1.0),
                            //background color of dropdown button
                            borderRadius: BorderRadius.circular(
                                20), //border raiuds of dropdown button
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            padding: const EdgeInsets.only(right: 10, left: 5),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<int>(
                                value: _selectedOption3,
                                isExpanded: true,
                                icon: const Icon(
                                  Icons.arrow_drop_down_circle,
                                ),
                                iconSize: 30,
                                elevation: 16,
                                iconEnabledColor: Colors.white,
                                dropdownColor: Colors.white,
                                onChanged: (newValue) {
                                  if(newValue == 2) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                        const page_lec(),
                                      ),
                                    );
                                  }else if(newValue == 3) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                        const Page_section(),
                                      ),
                                    );
                                  }else {
                                    setState(() {
                                      _selectedOption1 = newValue!;
                                    });
                                  }
                                },
                                items: const [
                                  DropdownMenuItem(
                                    value: 1,
                                    child: Text(
                                      'Subject Name3',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 2,
                                    child: Text(
                                      'Lecture',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 3,
                                    child: Text(
                                      'Lab',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(31, 122, 139, 1.0),
                            //background color of dropdown button
                            borderRadius: BorderRadius.circular(
                              20,
                            ), //border raiuds of dropdown button
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            padding: const EdgeInsets.only(right: 10, left: 5),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<int>(
                                value: _selectedOption4,
                                isExpanded: true,
                                icon: const Icon(
                                  Icons.arrow_drop_down_circle,
                                ),
                                iconSize: 30,
                                elevation: 16,
                                iconEnabledColor: Colors.white,
                                dropdownColor: Colors.white,
                                onChanged: (newValue) {
                                  if(newValue == 2) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                        const page_lec(),
                                      ),
                                    );
                                  }else if(newValue == 3) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                        const Page_section(),
                                      ),
                                    );
                                  }else {
                                    setState(() {
                                      _selectedOption1 = newValue!;
                                    });
                                  }
                                },
                                items: const [
                                  DropdownMenuItem(
                                    value: 1,
                                    child: Text(
                                      'Subject Name4',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 2,
                                    child: Text(
                                      'Lecture',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 3,
                                    child: Text(
                                      'Lab',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(31, 122, 139, 1.0),
                            //background color of dropdown button
                            borderRadius: BorderRadius.circular(
                                20), //border raiuds of dropdown button
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            padding: const EdgeInsets.only(right: 10, left: 5),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<int>(
                                value: _selectedOption5,
                                isExpanded: true,
                                icon: const Icon(Icons.arrow_drop_down_circle),
                                iconSize: 30,
                                elevation: 16,
                                iconEnabledColor: Colors.white,
                                dropdownColor: Colors.white,
                                onChanged: (newValue) {
                                  if(newValue == 2) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                        const page_lec(),
                                      ),
                                    );
                                  }else if(newValue == 3) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                        const Page_section(),
                                      ),
                                    );
                                  }else {
                                    setState(() {
                                      _selectedOption1 = newValue!;
                                    });
                                  }
                                },
                                items: const [
                                  DropdownMenuItem(
                                    value: 1,
                                    child: Text(
                                      'Subject Name5',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                   ),
                                  DropdownMenuItem(
                                    value: 2,
                                    child: Text(
                                      'Lecture',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 3,
                                    child: Text(
                                      'Lab',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(31, 122, 139, 1.0),
                            //background color of dropdown button
                            borderRadius: BorderRadius.circular(
                                20), //border raiuds of dropdown button
                          ),
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            padding: const EdgeInsets.only(right: 10, left: 5),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<int>(
                                value: _selectedOption6,
                                isExpanded: true,
                                icon: const Icon(
                                  Icons.arrow_drop_down_circle,
                                ),
                                iconSize: 30,
                                elevation: 16,
                                iconEnabledColor: Colors.white,
                                dropdownColor: Colors.white,
                                onChanged: (newValue) {
                                  if(newValue == 2) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                        const page_lec(),
                                      ),
                                    );
                                  }else if(newValue == 3) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                        const Page_section(),
                                      ),
                                    );
                                  }else {
                                    setState(() {
                                      _selectedOption1 = newValue!;
                                    });
                                  }
                                },
                                items: const [
                                  DropdownMenuItem(
                                    value: 1,
                                    child: Text(
                                      'Subject Name6',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 2,
                                    child: Text(
                                      'Lecture',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: 3,
                                    child: Text(
                                      'Lab',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

import 'lab_absence.dart';
import 'lec_absence.dart';

class YourSubjectsScreen extends StatefulWidget {
  const YourSubjectsScreen({super.key});

  @override
  State<YourSubjectsScreen> createState() => _YourSubjectsScreenState();
}

class _YourSubjectsScreenState extends State<YourSubjectsScreen> {
  Text _selectedOption1 = const Text('Lecture');
  Text _selectedOption2 = const Text('Lecture');
  Text _selectedOption3 = const Text('Lecture');
  Text _selectedOption4 = const Text('Lecture');
  Text _selectedOption5 = const Text('Lecture');
  Text _selectedOption6 = const Text('Lecture');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width * 0.75,
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assetss/img_1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Noran Ahmed',
                    style: TextStyle(
                      color: Color.fromRGBO(10, 63, 79, 1.0),
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const ListTile(
                leading:
                Icon(Icons.school, color: Color.fromRGBO(10, 63, 79, 1.0)),
                title: Text(
                  'Grade: 4',
                  style: TextStyle(
                    color: Color.fromRGBO(10, 63, 79, 1.0),
                    fontSize: 18,
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              const ListTile(
                leading: Icon(Icons.format_list_numbered,
                    color: Color.fromRGBO(10, 63, 79, 1.0)),
                title: Text(
                  'Section: 4',
                  style: TextStyle(
                    color: Color.fromRGBO(10, 63, 79, 1.0),
                    fontSize: 18,
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              const ListTile(
                leading: Icon(Icons.recent_actors,
                    color: Color.fromRGBO(10, 63, 79, 1.0)),
                title: Text(
                  'National ID: 12345678901234',
                  style: TextStyle(
                    color: Color.fromRGBO(10, 63, 79, 1.0),
                    fontSize: 18,
                  ),
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 130, 98, 98),
                thickness: 1,
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Image.asset(
                    "assetss/حضرني.png",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Container(
              margin: const EdgeInsets.only(right: 5.0),
              width: MediaQuery.of(context).size.width / 1.2,
              child: Image.asset(
                "assetss/Group 78.png",
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.4,
              margin: const EdgeInsets.only(right: 7, left: 7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DecoratedBox(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(31, 122, 139,
                            1.0), //background color of dropdown button
                        borderRadius: BorderRadius.circular(
                            20), //border raiuds of dropdown button
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.only(right: 10, left: 5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<Text>(
                            value: _selectedOption1,
                            isExpanded: true,
                            icon: const Icon(Icons.arrow_drop_down_circle),
                            iconSize: 30,
                            elevation: 16,
                            iconEnabledColor: Colors.white,
                            dropdownColor: Colors.white,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedOption1 = newValue!;
                              });
                            },
                            items: [
                              DropdownMenuItem(
                                  value: _selectedOption1,
                                  child: const Text(
                                    'Subject Name1',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                              DropdownMenuItem(
                                  child: TextButton(
                                    child: const Text(
                                      'Lecture',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.grey),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const PageLecScreen()));
                                    },
                                  )),
                              DropdownMenuItem(
                                  child: TextButton(
                                    child: const Text(
                                      'Lab',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.grey),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const PagesectionScreen()));
                                    },
                                  ))
                            ],
                          ),
                        ),
                      )),
                  DecoratedBox(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(31, 122, 139,
                            1.0), //background color of dropdown button
                        borderRadius: BorderRadius.circular(
                            20), //border raiuds of dropdown button
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.only(right: 10, left: 5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<Text>(
                            value: _selectedOption2,
                            isExpanded: true,
                            icon: const Icon(Icons.arrow_drop_down_circle),
                            iconSize: 30,
                            elevation: 16,
                            iconEnabledColor: Colors.white,
                            dropdownColor: Colors.white,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedOption2 = newValue!;
                              });
                            },
                            items: [
                              DropdownMenuItem(
                                  value: _selectedOption2,
                                  child: const Text(
                                    'Subject Name2',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                              DropdownMenuItem(
                                  child: TextButton(
                                    child: const Text(
                                      'Lecture',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.grey),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const PageLecScreen()));
                                    },
                                  )),
                              DropdownMenuItem(
                                  child: TextButton(
                                    child: const Text(
                                      'Lab',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.grey),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const PagesectionScreen()));
                                    },
                                  ))
                            ],
                          ),
                        ),
                      )),
                  DecoratedBox(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(31, 122, 139,
                            1.0), //background color of dropdown button
                        borderRadius: BorderRadius.circular(
                            20), //border raiuds of dropdown button
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.only(right: 10, left: 5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<Text>(
                            value: _selectedOption3,
                            isExpanded: true,
                            icon: const Icon(Icons.arrow_drop_down_circle),
                            iconSize: 30,
                            elevation: 16,
                            iconEnabledColor: Colors.white,
                            dropdownColor: Colors.white,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedOption3 = newValue!;
                              });
                            },
                            items: [
                              DropdownMenuItem(
                                  value: _selectedOption3,
                                  child: const Text(
                                    'Subject Name3',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                              DropdownMenuItem(
                                  child: TextButton(
                                    child: const Text(
                                      'Lecture',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.grey),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const PageLecScreen()));
                                    },
                                  )),
                              DropdownMenuItem(
                                  child: TextButton(
                                    child: const Text(
                                      'Lab',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.grey),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const PagesectionScreen()));
                                    },
                                  ))
                            ],
                          ),
                        ),
                      )),
                  DecoratedBox(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(31, 122, 139,
                            1.0), //background color of dropdown button
                        borderRadius: BorderRadius.circular(
                            20), //border raiuds of dropdown button
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.only(right: 10, left: 5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<Text>(
                            value: _selectedOption4,
                            isExpanded: true,
                            icon: const Icon(Icons.arrow_drop_down_circle),
                            iconSize: 30,
                            elevation: 16,
                            iconEnabledColor: Colors.white,
                            dropdownColor: Colors.white,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedOption4 = newValue!;
                              });
                            },
                            items: [
                              DropdownMenuItem(
                                  value: _selectedOption4,
                                  child: const Text(
                                    'Subject Name4',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                              DropdownMenuItem(
                                  child: TextButton(
                                    child: const Text(
                                      'Lecture',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.grey),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const PageLecScreen()));
                                    },
                                  )),
                              DropdownMenuItem(
                                  child: TextButton(
                                    child: const Text(
                                      'Lab',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.grey),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const PagesectionScreen()));
                                    },
                                  ))
                            ],
                          ),
                        ),
                      )),
                  DecoratedBox(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(31, 122, 139,
                            1.0), //background color of dropdown button
                        borderRadius: BorderRadius.circular(
                            20), //border raiuds of dropdown button
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.only(right: 10, left: 5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<Text>(
                            value: _selectedOption5,
                            isExpanded: true,
                            icon: const Icon(Icons.arrow_drop_down_circle),
                            iconSize: 30,
                            elevation: 16,
                            iconEnabledColor: Colors.white,
                            dropdownColor: Colors.white,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedOption5 = newValue!;
                              });
                            },
                            items: [
                              DropdownMenuItem(
                                  value: _selectedOption5,
                                  child: const Text(
                                    'Subject Name5',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                              DropdownMenuItem(
                                  child: TextButton(
                                    child: const Text(
                                      'Lecture',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.grey),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const PageLecScreen()));
                                    },
                                  )),
                              DropdownMenuItem(
                                child: TextButton(
                                  child: const Text(
                                    'Lab',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.grey),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            const PagesectionScreen()));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                  DecoratedBox(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(31, 122, 139,
                            1.0), //background color of dropdown button
                        borderRadius: BorderRadius.circular(
                            20), //border raiuds of dropdown button
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.only(right: 10, left: 5),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<Text>(
                            value: _selectedOption6,
                            isExpanded: true,
                            icon: const Icon(Icons.arrow_drop_down_circle),
                            iconSize: 30,
                            elevation: 16,
                            iconEnabledColor: Colors.white,
                            dropdownColor: Colors.white,
                            onChanged: (newValue) {
                              setState(() {
                                _selectedOption6 = newValue!;
                              });
                            },
                            items: [
                              DropdownMenuItem(
                                  value: _selectedOption6,
                                  child: const Text(
                                    'Subject Name6',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                              DropdownMenuItem(
                                  child: TextButton(
                                    child: const Text(
                                      'Lecture',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.grey),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const PageLecScreen()));
                                    },
                                  )),
                              DropdownMenuItem(
                                  child: TextButton(
                                    child: const Text(
                                      'Lab',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.grey),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                              const PagesectionScreen()));
                                    },
                                  ))
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}