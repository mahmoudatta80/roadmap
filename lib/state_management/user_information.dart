import 'package:flutter/material.dart';
class MyModel extends ChangeNotifier{
  late String name;
  late String email;
  late String mobileNumber;
  late String password;
  late String imageUrl;

  int counter = 1;

  inc() {
    if (counter != 20) {
      counter++;
      notifyListeners();
    }
  }

  dec() {
    if (counter != 1) {
      counter--;
      notifyListeners();
    }
  }

  inf(
    String name,
    String email,
    String mobileNumber,
    String password,
    String imageUrl,
  ) {
    this.name = name;
    this.email = email;
    this.mobileNumber = mobileNumber;
    this.password = password;
    this.imageUrl = imageUrl;
    notifyListeners();
  }
}
