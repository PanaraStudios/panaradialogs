import 'package:flutter/material.dart';

///
/// This is the animation class containing all the animations for both dialogs.
/// you can use it separatly if you want to use them in your other widgets.
///
class PanaraAnimations {
  // slide animation from right to left
  // we need animation of type double
  static SlideTransition fromLeft(
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        end: Offset.zero,
        begin: const Offset(1.0, 0.0),
      ).animate(animation),
      child: child,
    );
  }

  // slide animation from left to right
  static SlideTransition fromRight(
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        end: Offset.zero,
        begin: const Offset(-1.0, 0.0),
      ).animate(animation),
      child: child,
    );
  }

  // slide animation from top to bottom
  static SlideTransition fromTop(
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        end: Offset.zero,
        begin: const Offset(0.0, -1.0),
      ).animate(animation),
      child: child,
    );
  }

  // slide animation from bottom to top
  static SlideTransition fromBottom(
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return SlideTransition(
      position: Tween<Offset>(
        end: Offset.zero,
        begin: const Offset(0.0, 1.0),
      ).animate(animation),
      child: child,
    );
  }

  // slide animation with grow effect
  static ScaleTransition grow(
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return ScaleTransition(
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
      child: child,
    );
  }

  // slide animation with shrink effect
  static ScaleTransition shrink(
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return ScaleTransition(
      scale: Tween<double>(end: 1.0, begin: 1.2).animate(
        CurvedAnimation(
          parent: animation,
          curve: const Interval(
            0.50,
            1.00,
            curve: Curves.linear,
          ),
        ),
      ),
      child: child,
    );
  }
}
