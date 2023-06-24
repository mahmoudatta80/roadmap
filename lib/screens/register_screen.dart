import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              color: Colors.cyanAccent,
              child: Align(
                alignment: Alignment.topLeft,
                child: const Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SizedBox(
                    //   height: 80,
                    // ),
                    Column(
                      children: [
                        const Text(
                          'SIGN UP',
                          style: TextStyle(
                            color: Colors.cyanAccent,
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            label: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12,),
                              child:  Text(
                                'Email',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            label: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12,),
                              child: Text(
                                'Passward',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            label: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12,),
                              child: const Text(
                                'Confirm Password',
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          children:
                          [
                            const Spacer(),
                            Container(
                              width: 130,
                              color: Colors.cyanAccent,
                              child: MaterialButton(
                                onPressed: (){},
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 55,
              width: double.infinity,
              color: Colors.cyanAccent,
              child: MaterialButton(
                onPressed: ()
                {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    
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