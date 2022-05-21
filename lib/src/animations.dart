import 'package:flutter/material.dart';

///
/// This is the animation class containing all the animations for both dialogs.
///
class Animations {
  // slide animation from right to left
  // we need animation of type double
  static fromLeft(Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return SlideTransition(
      child: child,
      position: Tween<Offset>(end: Offset.zero, begin: const Offset(1.0, 0.0))
          .animate(animation),
    );
  }

  // slide animation from left to right
  static fromRight(Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return SlideTransition(
      child: child,
      position: Tween<Offset>(end: Offset.zero, begin: const Offset(-1.0, 0.0))
          .animate(animation),
    );
  }

  // slide animation from top to bottom
  static fromTop(Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return SlideTransition(
      child: child,
      position: Tween<Offset>(end: Offset.zero, begin: const Offset(0.0, -1.0))
          .animate(animation),
    );
  }

  // slide animation from bottom to top
  static fromBottom(Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return SlideTransition(
      child: child,
      position: Tween<Offset>(end: Offset.zero, begin: const Offset(0.0, 1.0))
          .animate(animation),
    );
  }

  // slide animation with grow effect
  static grow(Animation<double> animation, Animation<double> secondaryAnimation,
      Widget child) {
    return ScaleTransition(
      child: child,
      scale: Tween<double>(end: 1.0, begin: 0.0).animate(
        CurvedAnimation(
          parent: animation,
          curve: const Interval(
            0.00,
            0.50,
            curve: Curves.linear,
          ),
        ),
      ),
    );
  }

  // slide animation with shrink effect
  static shrink(Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return ScaleTransition(
      child: child,
      scale: Tween<double>(end: 1.0, begin: 1.2).animate(
        CurvedAnimation(
          parent: animation,
          curve: const Interval(0.50, 1.00, curve: Curves.linear),
        ),
      ),
    );
  }
}
