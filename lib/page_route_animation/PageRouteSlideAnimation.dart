import 'package:flutter/material.dart';

class PageRouteSlideAnimation extends PageRouteBuilder{
  final Widget widget;
  final int duration;
  PageRouteSlideAnimation({required this.duration, required this.widget}):super(
      transitionDuration: Duration(seconds: duration),
      transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        animation = CurvedAnimation(parent: animation, curve: Curves.easeInCirc);
        return SlideTransition(
          position: Tween(
              begin: const Offset(1.0, 0.0),
              end: const Offset(0.0, 0.0))
              .animate(animation),
          child: child,
        );
      },
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
        return widget;
      }
  );

}