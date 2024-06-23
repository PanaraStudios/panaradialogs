import 'package:flutter/material.dart';
import 'package:panara_dialogs/panara_dialogs.dart';

///
/// This is the Info dialog with 4 different varients as follows:
/// 1. Sucess (Green color)
/// 2. Normal (Blue color)
/// 3. Warning (Orange color)
/// 4. Error (Red color)
/// 5. Custom (you can add your own color)
///
/// Also this dialog comes with 7 different animations:
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
class PanaraInfoDialog {
  ///
  /// This is PanaraInfoDialog without animation.
  ///
  /// for more information visit https://pub.dev/documentation/panara_dialogs/latest/
  ///
  static Future<T?> show<T>(
    BuildContext context, {
    String? title,
    required String message,
    String? imagePath,
    required String buttonText,
    required VoidCallback onTapDismiss,
    required PanaraDialogType panaraDialogType,
    Color? color,
    Color? textColor,
    Color? buttonTextColor,
    EdgeInsets? margin,
    EdgeInsets? padding,
    bool barrierDismissible = true,
    bool noImage = false,
  }) =>
      showDialog<T>(
        barrierDismissible: barrierDismissible,
        context: context,
        builder: (context) => PanaraInfoDialogWidget(
          title: title,
          message: message,
          buttonText: buttonText,
          onTapDismiss: onTapDismiss,
          panaraDialogType: panaraDialogType,
          color: color,
          textColor: textColor,
          buttonTextColor: buttonTextColor,
          imagePath: imagePath,
          margin: margin,
          padding: padding,
          noImage: noImage,
        ),
      );

  ///
  /// This will show the PanaraInfoDialog with slide animation from left.
  ///
  /// for more information visit https://pub.dev/documentation/panara_dialogs/latest/
  ///
  static Future<T?> showAnimatedFromLeft<T extends Object?>(
    BuildContext context, {
    String? title,
    required String message,
    String? imagePath,
    required String buttonText,
    required VoidCallback onTapDismiss,
    required PanaraDialogType panaraDialogType,
    Color? color,
    Color? textColor,
    Color? buttonTextColor,
    EdgeInsets? margin,
    EdgeInsets? padding,
    bool barrierDismissible = true,
    bool noImage = false,
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
            PanaraInfoDialogWidget(
          title: title,
          message: message,
          imagePath: imagePath,
          buttonText: buttonText,
          onTapDismiss: onTapDismiss,
          panaraDialogType: panaraDialogType,
          color: color,
          textColor: textColor,
          buttonTextColor: buttonTextColor,
          margin: margin,
          padding: padding,
          noImage: noImage,
        ),
      );

  ///
  /// This will show the PanaraInfoDialog with slide animation from right.
  ///
  /// for more information visit https://pub.dev/documentation/panara_dialogs/latest/
  ///
  static Future<T?> showAnimatedFromRight<T extends Object?>(
    BuildContext context, {
    String? title,
    required String message,
    String? imagePath,
    required String buttonText,
    required VoidCallback onTapDismiss,
    required PanaraDialogType panaraDialogType,
    Color? color,
    Color? textColor,
    Color? buttonTextColor,
    EdgeInsets? margin,
    EdgeInsets? padding,
    bool barrierDismissible = true,
    bool noImage = false,
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
            PanaraInfoDialogWidget(
          title: title,
          message: message,
          imagePath: imagePath,
          buttonText: buttonText,
          onTapDismiss: onTapDismiss,
          panaraDialogType: panaraDialogType,
          color: color,
          textColor: textColor,
          buttonTextColor: buttonTextColor,
          margin: margin,
          padding: padding,
          noImage: noImage,
        ),
      );

  ///
  /// This will show the PanaraInfoDialog with slide animation from top.
  ///
  /// for more information visit https://pub.dev/documentation/panara_dialogs/latest/
  ///
  static Future<T?> showAnimatedFromTop<T extends Object?>(
    BuildContext context, {
    String? title,
    required String message,
    String? imagePath,
    required String buttonText,
    required VoidCallback onTapDismiss,
    required PanaraDialogType panaraDialogType,
    Color? color,
    Color? textColor,
    Color? buttonTextColor,
    EdgeInsets? margin,
    EdgeInsets? padding,
    bool barrierDismissible = true,
    bool noImage = false,
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
            PanaraInfoDialogWidget(
          title: title,
          message: message,
          imagePath: imagePath,
          buttonText: buttonText,
          onTapDismiss: onTapDismiss,
          panaraDialogType: panaraDialogType,
          color: color,
          textColor: textColor,
          buttonTextColor: buttonTextColor,
          margin: margin,
          padding: padding,
          noImage: noImage,
        ),
      );

  ///
  /// This will show the PanaraInfoDialog with slide animation from bottom.
  ///
  /// for more information visit https://pub.dev/documentation/panara_dialogs/latest/
  ///
  static Future<T?> showAnimatedFromBottom<T extends Object?>(
    BuildContext context, {
    String? title,
    required String message,
    String? imagePath,
    required String buttonText,
    required VoidCallback onTapDismiss,
    required PanaraDialogType panaraDialogType,
    Color? color,
    Color? textColor,
    Color? buttonTextColor,
    EdgeInsets? margin,
    EdgeInsets? padding,
    bool barrierDismissible = true,
    bool noImage = false,
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
            PanaraInfoDialogWidget(
          title: title,
          message: message,
          imagePath: imagePath,
          buttonText: buttonText,
          onTapDismiss: onTapDismiss,
          panaraDialogType: panaraDialogType,
          color: color,
          textColor: textColor,
          buttonTextColor: buttonTextColor,
          margin: margin,
          padding: padding,
          noImage: noImage,
        ),
      );

  ///
  /// This will show the PanaraInfoDialog with grow animation from center.
  ///
  /// for more information visit https://pub.dev/documentation/panara_dialogs/latest/
  ///
  static Future<T?> showAnimatedGrow<T extends Object?>(
    BuildContext context, {
    String? title,
    required String message,
    String? imagePath,
    required String buttonText,
    required VoidCallback onTapDismiss,
    required PanaraDialogType panaraDialogType,
    Color? color,
    Color? textColor,
    Color? buttonTextColor,
    EdgeInsets? margin,
    EdgeInsets? padding,
    bool barrierDismissible = true,
    bool noImage = false,
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
            PanaraInfoDialogWidget(
          title: title,
          message: message,
          imagePath: imagePath,
          buttonText: buttonText,
          onTapDismiss: onTapDismiss,
          panaraDialogType: panaraDialogType,
          color: color,
          textColor: textColor,
          buttonTextColor: buttonTextColor,
          margin: margin,
          padding: padding,
          noImage: noImage,
        ),
      );

  ///
  /// This will show the PanaraInfoDialog with shrink animation from center.
  ///
  /// for more information visit https://pub.dev/documentation/panara_dialogs/latest/
  ///
  static Future<T?> showAnimatedShrink<T extends Object?>(
    BuildContext context, {
    String? title,
    required String message,
    String? imagePath,
    required String buttonText,
    required VoidCallback onTapDismiss,
    required PanaraDialogType panaraDialogType,
    Color? color,
    Color? textColor,
    Color? buttonTextColor,
    EdgeInsets? margin,
    EdgeInsets? padding,
    bool barrierDismissible = true,
    bool noImage = false,
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
            PanaraInfoDialogWidget(
          title: title,
          message: message,
          imagePath: imagePath,
          buttonText: buttonText,
          onTapDismiss: onTapDismiss,
          panaraDialogType: panaraDialogType,
          color: color,
          textColor: textColor,
          buttonTextColor: buttonTextColor,
          margin: margin,
          padding: padding,
          noImage: noImage,
        ),
      );

  ///
  /// This will show the PanaraInfoDialog with fade animation from center.
  /// This is the new animation added in the library.
  /// for more information visit https://pub.dev/documentation/panara_dialogs/latest/
  ///
  static Future<T?> showAnimatedFade<T extends Object?>(
    BuildContext context, {
    String? title,
    required String message,
    String? imagePath,
    required String buttonText,
    required VoidCallback onTapDismiss,
    required PanaraDialogType panaraDialogType,
    Color? color,
    Color? textColor,
    Color? buttonTextColor,
    EdgeInsets? margin,
    EdgeInsets? padding,
    bool barrierDismissible = true,
    bool noImage = false,
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
            PanaraInfoDialogWidget(
          title: title,
          message: message,
          imagePath: imagePath,
          buttonText: buttonText,
          onTapDismiss: onTapDismiss,
          panaraDialogType: panaraDialogType,
          color: color,
          textColor: textColor,
          buttonTextColor: buttonTextColor,
          margin: margin,
          padding: padding,
          noImage: noImage,
        ),
      );
}
