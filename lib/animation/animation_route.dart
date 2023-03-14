import 'package:flutter/material.dart';

class AnimationRoute extends PageRouteBuilder {
  final page;

  AnimationRoute({this.page})
      : super(
          pageBuilder: (context, animationOne, animationTwo) => page,
          transitionsBuilder: (context, animation, secondAnimation, child) {
            const begin = 0.0;
            const end = 1.0;
            final tween = Tween(begin: begin, end: end);
            final curveAnimation =
                CurvedAnimation(parent: animation, curve: Curves.linear);
            return SizeTransition(sizeFactor: tween.animate(curveAnimation),child: child,);
          },
        );
}
