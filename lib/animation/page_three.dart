import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  AnimationController? _controller2;
  Animation? _animation;
  Animation? _animation2;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 2,
      ),
    );
    _animation = Tween(
      begin: 0.0,
      end: 150.0,
    ).animate(_controller!)
      ..addStatusListener(
        (status) {},
      )
      ..addListener(() {
        setState(() {});
      });
    _controller!.forward();
    _animation2 = Tween(begin: 0.0 , end: 6.0).animate(_controller!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: AnimatedRotation(
            curve: Curves.linear,
            turns: _animation2!.value,
            duration: const Duration(
              seconds: 2,
            ),
            child: FlutterLogo(
              curve: Curves.linear,
              duration: const Duration(seconds: 2,),
              size: _animation!.value,
            ),
          ),
        ),
      ),
    );
  }
}
