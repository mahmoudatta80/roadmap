import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

dddddddddddddd

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Text(''),
      ),
    );
  }
}
