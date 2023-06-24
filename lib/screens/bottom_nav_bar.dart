import 'package:flutter/material.dart';

class CustomBotNavBar extends StatefulWidget {
  const CustomBotNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBotNavBar> createState() => _CustomBotNavBarState();
}

class _CustomBotNavBarState extends State<CustomBotNavBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Material(
              child: Container(
                width: MediaQuery.of(context).size.width * .7,
                color: Colors.white,
                height: 80,
                child: TabBar(
                  padding: const EdgeInsets.all(10.0),
                  physics: const ClampingScrollPhysics(),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.pink,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.pinkAccent,
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                          border:
                              Border.all(width: 1, color: Colors.pinkAccent),
                        ),
                        height: 55,
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Chat',
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                          border:
                              Border.all(width: 1, color: Colors.pinkAccent),
                        ),
                        height: 55,
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Chat',
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                          border:
                              Border.all(width: 1, color: Colors.pinkAccent),
                        ),
                        height: 55,
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Chat',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text('Mahmoud',style: TextStyle(fontSize: 26),)),
                  Center(child: Text('Khaled',style: TextStyle(fontSize: 26),)),
                  Center(child: Text('Omar',style: TextStyle(fontSize: 26),)),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
          child: BottomNavigationBar(
            elevation: 0,
            unselectedItemColor: Colors.black,
            backgroundColor: Colors.grey.withOpacity(
              .4,
            ),
            type: BottomNavigationBarType.fixed,
            currentIndex: 0,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
