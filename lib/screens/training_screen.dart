import 'package:flutter/material.dart';

class TrainingScreen extends StatelessWidget {
  const TrainingScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          elevation: 0,
          title: const Text(
            'T A P - B A R',
          ),
          centerTitle: true,
        ),
        body: const Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person_rounded,
                    color: Colors.deepPurple,
                  ),
                ),
              ]
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: Text(
                      'First page',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Second page',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Third page',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
