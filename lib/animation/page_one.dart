import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:roadmap/animation/page_three.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation? _animation;

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
      end: 1.0,
    ).animate(_controller!)
      ..addStatusListener(
        (status) {
          print(status);
        },
      )
      ..addListener(() {
        setState(() {});
        print(_animation!.value);
      });
    _controller!.forward();
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: _animation!.value,
                duration: const Duration(
                  seconds: 2,
                ),
                child: Column(
                  children: [
                    const FlutterLogo(
                      size: 130,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PageThree(),
                          ),
                        );
                      },
                      child: const Text(
                        'Move to second screen',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
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
    );
  }
}
