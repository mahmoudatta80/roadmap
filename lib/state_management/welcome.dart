
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:roadmap/state_management/details.dart';
import 'package:roadmap/state_management/user_information.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<MyModel>(
                builder: (context, value, child) => Text(
                  'Welcome ${value.name} your mail is ${value.email} and your phone is ${value.mobileNumber}',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer<MyModel>(
                    builder: (context, value, child) => IconButton(
                      onPressed: () {
                        value.dec();
                      },
                      icon: const Icon(
                        Icons.remove,
                      ),
                    ),
                  ),
                  Consumer<MyModel>(
                    builder: (context, value, child) => Text(
                      value.counter.toString(),
                    ),
                  ),
                  Consumer<MyModel>(
                    builder: (context, value, child) => IconButton(
                      onPressed: () {
                        value.inc();
                      },
                      icon: const Icon(
                        Icons.add,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Details(),),
                  );
                },
                child: const Text(
                  'Sign Up',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
