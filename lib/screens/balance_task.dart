import 'package:flutter/material.dart';

class BalanceScreen extends StatelessWidget {
  const BalanceScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue[600],
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children:
                    [
                      IconButton(
                        onPressed: (){},
                        icon: const Icon(
                          Icons.menu_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const Expanded(
                        child: Center(
                          child: Text(
                            'Your Balance',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: (){},
                        icon: const Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 110,
                      color: Colors.cyan,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Mahmoud Atta',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'mahmoudatta@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 270,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                        const Text(
                          'BALANCE',
                          style: TextStyle(
                            color: Colors.cyan,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          '\$4,180,20',
                          style: TextStyle(
                            color: Colors.blue[900],
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        MaterialButton(
                          height: 30,
                          color: Colors.blue[900],
                          onPressed: (){},
                          shape: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            'TRANSFER',
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1,
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
