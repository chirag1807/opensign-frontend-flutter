import 'package:flutter/material.dart';

class PageRouteSizeAnimation extends PageRouteBuilder{
  final Widget widget;
  final int duration;
  PageRouteSizeAnimation({required this.duration, required this.widget}):super(
      transitionDuration: Duration(seconds: duration),
      transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        animation = CurvedAnimation(parent: animation, curve: Curves.easeInBack);
        return Align(
          child: SizeTransition(
            sizeFactor: animation,
            axisAlignment: 0.0,
            child: child,
          ),
        );
      },
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
        return widget;
      }
  );

}