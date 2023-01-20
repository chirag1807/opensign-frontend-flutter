import 'package:flutter/material.dart';

class PageRouteFadeAnimation extends PageRouteBuilder{
  final Widget widget;
  final int duration;
  PageRouteFadeAnimation({required this.duration, required this.widget}):super(
      transitionDuration: Duration(seconds: duration),
      transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        animation = CurvedAnimation(parent: animation, curve: Curves.easeInCirc);
        return Align(
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
      },
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
        return widget;
      }
  );

}