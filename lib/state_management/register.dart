import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:roadmap/main.dart';
import 'package:roadmap/state_management/user_information.dart';
import 'package:roadmap/state_management/welcome.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var numberController = TextEditingController();
    var passwordController = TextEditingController();
    var imageController = TextEditingController();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.cyanAccent[100],
      ),
    );
    return Scaffold(
      backgroundColor: Colors.cyanAccent[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    color: Colors.white,
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isEmpty) {
                          return 'name must not be empty';
                        }else {
                          return null;
                        }
                      },
                      controller: nameController,
                      decoration: const InputDecoration(
                        label: Text(
                          'Full Name',
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.white,
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isEmpty) {
                          return 'email URL must not be empty';
                        }else {
                          return null;
                        }
                      },
                      controller: emailController,
                      decoration: const InputDecoration(
                        label: Text(
                          'Email',
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.white,
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isEmpty) {
                          return 'num must not be empty';
                        }else {
                          return null;
                        }
                      },
                      controller: numberController,
                      decoration: const InputDecoration(
                        label: Text(
                          'Mobile Number',
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.white,
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isEmpty) {
                          return 'pass must not be empty';
                        }else {
                          return null;
                        }
                      },
                      controller: passwordController,
                      decoration: const InputDecoration(
                        label: Text(
                          'Password',
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.white,
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isEmpty) {
                          return 'Image URL must not be empty';
                        }else {
                          return null;
                        }
                      },
                      controller: imageController,
                      decoration: const InputDecoration(
                        label: Text(
                          'Image URL',
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Consumer<MyModel>(
                    builder: (BuildContext context, value, child) =>
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.black,
                            ),
                          ),
                          onPressed: () {
                            if(formKey.currentState!.validate()) {
                              value.inf(nameController.text, emailController.text, numberController.text, passwordController.text, imageController.text);
                              print(value.name);
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => Welcome(),),
                              );
                            }else {
                              return null;
                            }
                          },
                          child: const Text(
                            'Sign Up',
                          ),
                        ),
                  ),
                  const SizedBox(
                    height: 50,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
