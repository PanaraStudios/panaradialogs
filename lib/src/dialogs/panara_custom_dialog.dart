import 'package:flutter/material.dart';
import 'package:panara_dialogs/panara_dialogs.dart';

///
/// This is the PanaraCustomDialog with 7 different animations:
/// 1. showAnimatedFromLeft
/// 2. showAnimatedFromRight
/// 3. showAnimatedFromTop
/// 4. showAnimatedFromBottom
/// 5. showAnimatedGrow
/// 6. showAnimatedShrink
/// 7. showAnimatedFade
///
/// Checkout online documentation for more information or example at https://pub.dev/documentation/panara_dialogs/latest/
///
class PanaraCustomDialog {
  ///
  /// This is PanaraCustomDialog without animation.
  ///
  /// for more information visit https://pub.dev/documentation/panara_dialogs/latest/
  ///
  static Future<T?> show<T>(
    BuildContext context, {
    required List<Widget> children,
    EdgeInsets? margin,
    EdgeInsets? padding,
    Color? backgroundColor,
    bool barrierDismissible = true,
    MainAxisAlignment? mainAxisAlignment,
    CrossAxisAlignment? crossAxisAlignment,
  }) =>
      showDialog<T>(
        barrierDismissible: barrierDismissible,
        context: context,
        builder: (context) => PanaraCustomDialogWidget(
          margin: margin,
          padding: padding,
          backgroundColor: backgroundColor,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: children,
        ),
      );

  ///
  /// This will show the PanaraCustomDialog with slide animation from left.
  ///
  /// for more information visit https://pub.dev/documentation/panara_dialogs/latest/
  ///
  static Future<T?> showAnimatedFromLeft<T extends Object?>(
    BuildContext context, {
    required List<Widget> children,
    EdgeInsets? margin,
    EdgeInsets? padding,
    Color? backgroundColor,
    bool barrierDismissible = true,
    MainAxisAlignment? mainAxisAlignment,
    CrossAxisAlignment? crossAxisAlignment,
  }) =>
      showGeneralDialog<T>(
        barrierDismissible: barrierDismissible,
        context: context,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          return PanaraAnimations.fromLeft(
            animation,
            secondaryAnimation,
            child,
          );
        },
        pageBuilder: (animation, secondaryAnimation, child) =>
            PanaraCustomDialogWidget(
          margin: margin,
          padding: padding,
          backgroundColor: backgroundColor,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: children,
        ),
      );

  ///
  /// This will show the PanaraCustomDialog with slide animation from right.
  ///
  /// for more information visit https://pub.dev/documentation/panara_dialogs/latest/
  ///
  static Future<T?> showAnimatedFromRight<T extends Object?>(
    BuildContext context, {
    required List<Widget> children,
    EdgeInsets? margin,
    EdgeInsets? padding,
    Color? backgroundColor,
    bool barrierDismissible = true,
    MainAxisAlignment? mainAxisAlignment,
    CrossAxisAlignment? crossAxisAlignment,
  }) =>
      showGeneralDialog<T>(
        barrierDismissible: barrierDismissible,
        context: context,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          return PanaraAnimations.fromRight(
            animation,
            secondaryAnimation,
            child,
          );
        },
        pageBuilder: (animation, secondaryAnimation, child) =>
            PanaraCustomDialogWidget(
          margin: margin,
          padding: padding,
          backgroundColor: backgroundColor,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: children,
        ),
      );

  ///
  /// This will show the PanaraCustomDialog with slide animation from top.
  ///
  /// for more information visit https://pub.dev/documentation/panara_dialogs/latest/
  ///
  static Future<T?> showAnimatedFromTop<T extends Object?>(
    BuildContext context, {
    required List<Widget> children,
    EdgeInsets? margin,
    EdgeInsets? padding,
    Color? backgroundColor,
    bool barrierDismissible = true,
    MainAxisAlignment? mainAxisAlignment,
    CrossAxisAlignment? crossAxisAlignment,
  }) =>
      showGeneralDialog<T>(
        barrierDismissible: barrierDismissible,
        context: context,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          return PanaraAnimations.fromTop(
            animation,
            secondaryAnimation,
            child,
          );
        },
        pageBuilder: (animation, secondaryAnimation, child) =>
            PanaraCustomDialogWidget(
          margin: margin,
          padding: padding,
          backgroundColor: backgroundColor,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: children,
        ),
      );

  ///
  /// This will show the PanaraCustomDialog with slide animation from bottom.
  ///
  /// for more information visit https://pub.dev/documentation/panara_dialogs/latest/
  ///
  static Future<T?> showAnimatedFromBottom<T extends Object?>(
    BuildContext context, {
    required List<Widget> children,
    EdgeInsets? margin,
    EdgeInsets? padding,
    Color? backgroundColor,
    bool barrierDismissible = true,
    MainAxisAlignment? mainAxisAlignment,
    CrossAxisAlignment? crossAxisAlignment,
  }) =>
      showGeneralDialog<T>(
        barrierDismissible: barrierDismissible,
        context: context,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          return PanaraAnimations.fromBottom(
            animation,
            secondaryAnimation,
            child,
          );
        },
        pageBuilder: (animation, secondaryAnimation, child) =>
            PanaraCustomDialogWidget(
          margin: margin,
          padding: padding,
          backgroundColor: backgroundColor,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: children,
        ),
      );

  ///
  /// This will show the PanaraCustomDialog with grow animation from center.
  ///
  /// for more information visit https://pub.dev/documentation/panara_dialogs/latest/
  ///
  static Future<T?> showAnimatedGrow<T extends Object?>(
    BuildContext context, {
    required List<Widget> children,
    EdgeInsets? margin,
    EdgeInsets? padding,
    Color? backgroundColor,
    bool barrierDismissible = true,
    MainAxisAlignment? mainAxisAlignment,
    CrossAxisAlignment? crossAxisAlignment,
  }) =>
      showGeneralDialog<T>(
        barrierDismissible: barrierDismissible,
        context: context,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          return PanaraAnimations.grow(
            animation,
            secondaryAnimation,
            child,
          );
        },
        pageBuilder: (animation, secondaryAnimation, child) =>
            PanaraCustomDialogWidget(
          margin: margin,
          padding: padding,
          backgroundColor: backgroundColor,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: children,
        ),
      );

  ///
  /// This will show the PanaraCustomDialog with shrink animation from center.
  ///
  /// for more information visit https://pub.dev/documentation/panara_dialogs/latest/
  ///
  static Future<T?> showAnimatedShrink<T extends Object?>(
    BuildContext context, {
    required List<Widget> children,
    EdgeInsets? margin,
    EdgeInsets? padding,
    Color? backgroundColor,
    bool barrierDismissible = true,
    MainAxisAlignment? mainAxisAlignment,
    CrossAxisAlignment? crossAxisAlignment,
  }) =>
      showGeneralDialog<T>(
        barrierDismissible: barrierDismissible,
        context: context,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          return PanaraAnimations.shrink(
            animation,
            secondaryAnimation,
            child,
          );
        },
        pageBuilder: (animation, secondaryAnimation, child) =>
            PanaraCustomDialogWidget(
          margin: margin,
          padding: padding,
          backgroundColor: backgroundColor,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: children,
        ),
      );

  ///
  /// This will show the PanaraCustomDialog with fade animation from center.
  /// This is the new animation added in the library.
  /// for more information visit https://pub.dev/documentation/panara_dialogs/latest/
  ///
  static Future<T?> showAnimatedFade<T extends Object?>(
    BuildContext context, {
    required List<Widget> children,
    EdgeInsets? margin,
    EdgeInsets? padding,
    Color? backgroundColor,
    bool barrierDismissible = true,
    MainAxisAlignment? mainAxisAlignment,
    CrossAxisAlignment? crossAxisAlignment,
  }) =>
      showGeneralDialog<T>(
        barrierDismissible: barrierDismissible,
        context: context,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          return PanaraAnimations.fade(
            animation,
            secondaryAnimation,
            child,
          );
        },
        pageBuilder: (animation, secondaryAnimation, child) =>
            PanaraCustomDialogWidget(
          margin: margin,
          padding: padding,
          backgroundColor: backgroundColor,
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: crossAxisAlignment,
          children: children,
        ),
      );
}
