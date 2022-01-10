import 'package:flutter/material.dart';
import 'package:panara_dialogs/src/colors.dart';

///
/// This is the Info dialog with 4 different varients as follows:
/// 1. Sucess (Green color)
/// 2. Normal (Blue color)
/// 3. Warning (Orange color)
/// 4. Error (Red color)
///
/// Also this dialog comes with 6 different animations:
/// 1. showAnimatedFromLeft
/// 2. showAnimatedFromRight
/// 3. showAnimatedFromTop
/// 4. showAnimatedFromBottom
/// 5. showAnimatedGrow
/// 6. showAnimatedShrink
///
/// Checkout online documentation for more information or example at https://pub.dev
///
class PanaraInfoDialog {
  ///
  /// This is PanaraInfoDialog without animation.
  ///
  /// for more information visit https://pub.dev
  ///
  static show(
    BuildContext context, {
    required String title,
    required String message,
    required String buttonText,
    required VoidCallback onTapDismiss,
    required PanaraDialogType panaraDialogType,
    bool barrierDismissible = true,
  }) =>
      showDialog(
        barrierDismissible: barrierDismissible,
        context: context,
        builder: (context) => _PanaraInfoDialogWidget(
          title: title,
          message: message,
          buttonText: buttonText,
          onTapDismiss: onTapDismiss,
          panaraDialogType: panaraDialogType,
        ),
      );

  ///
  /// This will show the PanaraInfoDialog with slide animation from left.
  ///
  /// for more information visit https://pub.dev
  ///
  static showAnimatedFromLeft(
    BuildContext context, {
    required String title,
    required String message,
    required String buttonText,
    required VoidCallback onTapDismiss,
    required PanaraDialogType panaraDialogType,
    bool barrierDismissible = true,
  }) =>
      showGeneralDialog(
        barrierDismissible: barrierDismissible,
        context: context,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
          return _Animations._fromLeft(_animation, _secondaryAnimation, _child);
        },
        pageBuilder: (_animation, _secondaryAnimation, _child) =>
            _PanaraInfoDialogWidget(
          title: title,
          message: message,
          buttonText: buttonText,
          onTapDismiss: onTapDismiss,
          panaraDialogType: panaraDialogType,
        ),
      );

  ///
  /// This will show the PanaraInfoDialog with slide animation from right.
  ///
  /// for more information visit https://pub.dev
  ///
  static showAnimatedFromRight(
    BuildContext context, {
    required String title,
    required String message,
    required String buttonText,
    required VoidCallback onTapDismiss,
    required PanaraDialogType panaraDialogType,
    bool barrierDismissible = true,
  }) =>
      showGeneralDialog(
        barrierDismissible: barrierDismissible,
        context: context,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
          return _Animations._fromRight(
              _animation, _secondaryAnimation, _child);
        },
        pageBuilder: (_animation, _secondaryAnimation, _child) =>
            _PanaraInfoDialogWidget(
          title: title,
          message: message,
          buttonText: buttonText,
          onTapDismiss: onTapDismiss,
          panaraDialogType: panaraDialogType,
        ),
      );

  ///
  /// This will show the PanaraInfoDialog with slide animation from top.
  ///
  /// for more information visit https://pub.dev
  ///
  static showAnimatedFromTop(
    BuildContext context, {
    required String title,
    required String message,
    required String buttonText,
    required VoidCallback onTapDismiss,
    required PanaraDialogType panaraDialogType,
    bool barrierDismissible = true,
  }) =>
      showGeneralDialog(
        barrierDismissible: barrierDismissible,
        context: context,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
          return _Animations._fromTop(_animation, _secondaryAnimation, _child);
        },
        pageBuilder: (_animation, _secondaryAnimation, _child) =>
            _PanaraInfoDialogWidget(
          title: title,
          message: message,
          buttonText: buttonText,
          onTapDismiss: onTapDismiss,
          panaraDialogType: panaraDialogType,
        ),
      );

  ///
  /// This will show the PanaraInfoDialog with slide animation from bottom.
  ///
  /// for more information visit https://pub.dev
  ///
  static showAnimatedFromBottom(
    BuildContext context, {
    required String title,
    required String message,
    required String buttonText,
    required VoidCallback onTapDismiss,
    required PanaraDialogType panaraDialogType,
    bool barrierDismissible = true,
  }) =>
      showGeneralDialog(
        barrierDismissible: barrierDismissible,
        context: context,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
          return _Animations._fromBottom(
              _animation, _secondaryAnimation, _child);
        },
        pageBuilder: (_animation, _secondaryAnimation, _child) =>
            _PanaraInfoDialogWidget(
          title: title,
          message: message,
          buttonText: buttonText,
          onTapDismiss: onTapDismiss,
          panaraDialogType: panaraDialogType,
        ),
      );

  ///
  /// This will show the PanaraInfoDialog with grow animation from center.
  ///
  /// for more information visit https://pub.dev
  ///
  static showAnimatedGrow(
    BuildContext context, {
    required String title,
    required String message,
    required String buttonText,
    required VoidCallback onTapDismiss,
    required PanaraDialogType panaraDialogType,
    bool barrierDismissible = true,
  }) =>
      showGeneralDialog(
        barrierDismissible: barrierDismissible,
        context: context,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
          return _Animations._grow(_animation, _secondaryAnimation, _child);
        },
        pageBuilder: (_animation, _secondaryAnimation, _child) =>
            _PanaraInfoDialogWidget(
          title: title,
          message: message,
          buttonText: buttonText,
          onTapDismiss: onTapDismiss,
          panaraDialogType: panaraDialogType,
        ),
      );

  ///
  /// This will show the PanaraInfoDialog with shrink animation from center.
  ///
  /// for more information visit https://pub.dev
  ///
  static showAnimatedShrink(
    BuildContext context, {
    required String title,
    required String message,
    required String buttonText,
    required VoidCallback onTapDismiss,
    required PanaraDialogType panaraDialogType,
    bool barrierDismissible = true,
  }) =>
      showGeneralDialog(
        barrierDismissible: barrierDismissible,
        context: context,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
          return _Animations._shrink(_animation, _secondaryAnimation, _child);
        },
        pageBuilder: (_animation, _secondaryAnimation, _child) =>
            _PanaraInfoDialogWidget(
          title: title,
          message: message,
          buttonText: buttonText,
          onTapDismiss: onTapDismiss,
          panaraDialogType: panaraDialogType,
        ),
      );
}

///
/// This is the Confirmation dialog with 4 different varients as follows:
/// 1. Sucess (Green color)
/// 2. Normal (Blue color)
/// 3. Warning (Orange color)
/// 4. Error (Red color)
///
/// Also this dialog comes with 6 different animations:
/// 1. showAnimatedFromLeft
/// 2. showAnimatedFromRight
/// 3. showAnimatedFromTop
/// 4. showAnimatedFromBottom
/// 5. showAnimatedGrow
/// 6. showAnimatedShrink
///
/// Checkout online documentation for more information or example at https://pub.dev
///
class PanaraConfirmDialog {
  ///
  /// This is PanaraConfirmDialog without animation.
  ///
  /// for more information visit https://pub.dev
  ///
  static show(
    BuildContext context, {
    required String title,
    required String message,
    required String confirmButtonText,
    required String cancelButtonText,
    required VoidCallback onTapConfirm,
    required VoidCallback onTapCancel,
    required PanaraDialogType panaraDialogType,
    bool barrierDismissible = true,
  }) =>
      showDialog(
        barrierDismissible: barrierDismissible,
        context: context,
        builder: (context) => _PanaraConfirmDialogWidget(
          title: title,
          message: message,
          confirmButtonText: confirmButtonText,
          cancelButtonText: cancelButtonText,
          onTapConfirm: onTapConfirm,
          onTapCancel: onTapCancel,
          panaraDialogType: panaraDialogType,
          barrierDismissible: barrierDismissible,
        ),
      );

  ///
  /// This will show the PanaraConfirmDialog with slide animation from left.
  ///
  /// for more information visit https://pub.dev
  ///
  static showAnimatedFromLeft(
    BuildContext context, {
    required String title,
    required String message,
    required String confirmButtonText,
    required String cancelButtonText,
    required VoidCallback onTapConfirm,
    required VoidCallback onTapCancel,
    required PanaraDialogType panaraDialogType,
    bool barrierDismissible = true,
  }) =>
      showGeneralDialog(
        barrierDismissible: barrierDismissible,
        context: context,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
          return _Animations._fromLeft(_animation, _secondaryAnimation, _child);
        },
        pageBuilder: (_animation, _secondaryAnimation, _child) =>
            _PanaraConfirmDialogWidget(
          title: title,
          message: message,
          confirmButtonText: confirmButtonText,
          cancelButtonText: cancelButtonText,
          onTapConfirm: onTapConfirm,
          onTapCancel: onTapCancel,
          panaraDialogType: panaraDialogType,
          barrierDismissible: barrierDismissible,
        ),
      );

  ///
  /// This will show the PanaraConfirmDialog with slide animation from right.
  ///
  /// for more information visit https://pub.dev
  ///
  static showAnimatedFromRight(
    BuildContext context, {
    required String title,
    required String message,
    required String confirmButtonText,
    required String cancelButtonText,
    required VoidCallback onTapConfirm,
    required VoidCallback onTapCancel,
    required PanaraDialogType panaraDialogType,
    bool barrierDismissible = true,
  }) =>
      showGeneralDialog(
        barrierDismissible: barrierDismissible,
        context: context,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
          return _Animations._fromRight(
              _animation, _secondaryAnimation, _child);
        },
        pageBuilder: (_animation, _secondaryAnimation, _child) =>
            _PanaraConfirmDialogWidget(
          title: title,
          message: message,
          confirmButtonText: confirmButtonText,
          cancelButtonText: cancelButtonText,
          onTapConfirm: onTapConfirm,
          onTapCancel: onTapCancel,
          panaraDialogType: panaraDialogType,
          barrierDismissible: barrierDismissible,
        ),
      );

  ///
  /// This will show the PanaraConfirmDialog with slide animation from top.
  ///
  /// for more information visit https://pub.dev
  ///
  static showAnimatedFromTop(
    BuildContext context, {
    required String title,
    required String message,
    required String confirmButtonText,
    required String cancelButtonText,
    required VoidCallback onTapConfirm,
    required VoidCallback onTapCancel,
    required PanaraDialogType panaraDialogType,
    bool barrierDismissible = true,
  }) =>
      showGeneralDialog(
        barrierDismissible: barrierDismissible,
        context: context,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
          return _Animations._fromTop(_animation, _secondaryAnimation, _child);
        },
        pageBuilder: (_animation, _secondaryAnimation, _child) =>
            _PanaraConfirmDialogWidget(
          title: title,
          message: message,
          confirmButtonText: confirmButtonText,
          cancelButtonText: cancelButtonText,
          onTapConfirm: onTapConfirm,
          onTapCancel: onTapCancel,
          panaraDialogType: panaraDialogType,
          barrierDismissible: barrierDismissible,
        ),
      );

  ///
  /// This will show the PanaraConfirmDialog with slide animation from bottom.
  ///
  /// for more information visit https://pub.dev
  ///
  static showAnimatedFromBottom(
    BuildContext context, {
    required String title,
    required String message,
    required String confirmButtonText,
    required String cancelButtonText,
    required VoidCallback onTapConfirm,
    required VoidCallback onTapCancel,
    required PanaraDialogType panaraDialogType,
    bool barrierDismissible = true,
  }) =>
      showGeneralDialog(
        barrierDismissible: barrierDismissible,
        context: context,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
          return _Animations._fromBottom(
              _animation, _secondaryAnimation, _child);
        },
        pageBuilder: (_animation, _secondaryAnimation, _child) =>
            _PanaraConfirmDialogWidget(
          title: title,
          message: message,
          confirmButtonText: confirmButtonText,
          cancelButtonText: cancelButtonText,
          onTapConfirm: onTapConfirm,
          onTapCancel: onTapCancel,
          panaraDialogType: panaraDialogType,
          barrierDismissible: barrierDismissible,
        ),
      );

  ///
  /// This will show the PanaraConfirmDialog with grow animation from center.
  ///
  /// for more information visit https://pub.dev
  ///
  static showAnimatedGrow(
    BuildContext context, {
    required String title,
    required String message,
    required String confirmButtonText,
    required String cancelButtonText,
    required VoidCallback onTapConfirm,
    required VoidCallback onTapCancel,
    required PanaraDialogType panaraDialogType,
    bool barrierDismissible = true,
  }) =>
      showGeneralDialog(
        barrierDismissible: barrierDismissible,
        context: context,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
          return _Animations._grow(_animation, _secondaryAnimation, _child);
        },
        pageBuilder: (_animation, _secondaryAnimation, _child) =>
            _PanaraConfirmDialogWidget(
          title: title,
          message: message,
          confirmButtonText: confirmButtonText,
          cancelButtonText: cancelButtonText,
          onTapConfirm: onTapConfirm,
          onTapCancel: onTapCancel,
          panaraDialogType: panaraDialogType,
          barrierDismissible: barrierDismissible,
        ),
      );

  ///
  /// This will show the PanaraConfirmDialog with shrink animation from center.
  ///
  /// for more information visit https://pub.dev
  ///
  static showAnimatedShrink(
    BuildContext context, {
    required String title,
    required String message,
    required String confirmButtonText,
    required String cancelButtonText,
    required VoidCallback onTapConfirm,
    required VoidCallback onTapCancel,
    required PanaraDialogType panaraDialogType,
    bool barrierDismissible = true,
  }) =>
      showGeneralDialog(
        barrierDismissible: barrierDismissible,
        context: context,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
          return _Animations._shrink(_animation, _secondaryAnimation, _child);
        },
        pageBuilder: (_animation, _secondaryAnimation, _child) =>
            _PanaraConfirmDialogWidget(
          title: title,
          message: message,
          confirmButtonText: confirmButtonText,
          cancelButtonText: cancelButtonText,
          onTapConfirm: onTapConfirm,
          onTapCancel: onTapCancel,
          panaraDialogType: panaraDialogType,
          barrierDismissible: barrierDismissible,
        ),
      );
}

///
/// This is the Button widget used in both dialogs.
///
///
class _PanaraButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final Color bgColor;
  final bool isOutlined;

  const _PanaraButton({
    Key? key,
    required this.text,
    this.onTap,
    required this.bgColor,
    required this.isOutlined,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isOutlined ? Colors.white : bgColor,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            border: isOutlined ? Border.all(color: bgColor) : null,
            borderRadius: BorderRadius.circular(10),
            color: Colors.transparent,
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: isOutlined ? bgColor : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

///
/// These are the 4 Variants for both Dialogs.
///
/// for more information visit https://pub.dev
///
enum PanaraDialogType {
  success,
  normal,
  warning,
  error,
}

///
/// This is the animation class containing all the animations for both dialogs.
///
class _Animations {
  // slide animation from right to left
  // we need animation of type double
  static _fromLeft(Animation<double> _animation,
      Animation<double> _secondaryAnimation, Widget _child) {
    return SlideTransition(
      child: _child,
      position: Tween<Offset>(end: Offset.zero, begin: const Offset(1.0, 0.0))
          .animate(_animation),
    );
  }

  // slide animation from left to right
  static _fromRight(Animation<double> _animation,
      Animation<double> _secondaryAnimation, Widget _child) {
    return SlideTransition(
      child: _child,
      position: Tween<Offset>(end: Offset.zero, begin: const Offset(-1.0, 0.0))
          .animate(_animation),
    );
  }

  // slide animation from top to bottom
  static _fromTop(Animation<double> _animation,
      Animation<double> _secondaryAnimation, Widget _child) {
    return SlideTransition(
      child: _child,
      position: Tween<Offset>(end: Offset.zero, begin: const Offset(0.0, -1.0))
          .animate(_animation),
    );
  }

  // slide animation from bottom to top
  static _fromBottom(Animation<double> _animation,
      Animation<double> _secondaryAnimation, Widget _child) {
    return SlideTransition(
      child: _child,
      position: Tween<Offset>(end: Offset.zero, begin: const Offset(0.0, 1.0))
          .animate(_animation),
    );
  }

  // slide animation with grow effect
  static _grow(Animation<double> _animation,
      Animation<double> _secondaryAnimation, Widget _child) {
    return ScaleTransition(
      child: _child,
      scale: Tween<double>(end: 1.0, begin: 0.0).animate(
        CurvedAnimation(
          parent: _animation,
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
  static _shrink(Animation<double> _animation,
      Animation<double> _secondaryAnimation, Widget _child) {
    return ScaleTransition(
      child: _child,
      scale: Tween<double>(end: 1.0, begin: 1.2).animate(
        CurvedAnimation(
          parent: _animation,
          curve: const Interval(0.50, 1.00, curve: Curves.linear),
        ),
      ),
    );
  }
}

///
/// This is the PanaraInfoDialogWidget.
///
class _PanaraInfoDialogWidget extends StatelessWidget {
  final String title;
  final String message;
  final String buttonText;
  final VoidCallback onTapDismiss;
  final PanaraDialogType panaraDialogType;
  final bool barrierDismissible;
  const _PanaraInfoDialogWidget({
    Key? key,
    required this.title,
    required this.message,
    required this.buttonText,
    required this.onTapDismiss,
    required this.panaraDialogType,
    this.barrierDismissible = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Material(
        color: Colors.transparent,
        child: Container(
          margin: const EdgeInsets.all(24),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'packages/panara_dialogs/assets/info.png',
                width: 84,
                height: 84,
                color: panaraDialogType == PanaraDialogType.normal
                    ? normal
                    : panaraDialogType == PanaraDialogType.success
                        ? success
                        : panaraDialogType == PanaraDialogType.warning
                            ? warning
                            : error,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  height: 1.2,
                  fontWeight: FontWeight.w600,
                  color: textColor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                message,
                style: TextStyle(
                  color: textColor,
                  height: 1.5,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              _PanaraButton(
                text: buttonText,
                onTap: onTapDismiss,
                bgColor: panaraDialogType == PanaraDialogType.normal
                    ? normal
                    : panaraDialogType == PanaraDialogType.success
                        ? success
                        : panaraDialogType == PanaraDialogType.warning
                            ? warning
                            : error,
                isOutlined: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///
/// This is the PanaraConfirmDialogWidget.
///
class _PanaraConfirmDialogWidget extends StatelessWidget {
  final String title;
  final String message;
  final String confirmButtonText;
  final String cancelButtonText;
  final VoidCallback onTapConfirm;
  final VoidCallback onTapCancel;
  final PanaraDialogType panaraDialogType;
  final bool barrierDismissible;
  const _PanaraConfirmDialogWidget({
    Key? key,
    required this.title,
    required this.message,
    required this.confirmButtonText,
    required this.cancelButtonText,
    required this.onTapConfirm,
    required this.onTapCancel,
    required this.panaraDialogType,
    required this.barrierDismissible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Material(
        color: Colors.transparent,
        child: Container(
          margin: const EdgeInsets.all(24),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'packages/panara_dialogs/assets/confirm.png',
                width: 84,
                height: 84,
                color: panaraDialogType == PanaraDialogType.normal
                    ? normal
                    : panaraDialogType == PanaraDialogType.success
                        ? success
                        : panaraDialogType == PanaraDialogType.warning
                            ? warning
                            : error,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 24,
                  height: 1.2,
                  fontWeight: FontWeight.w600,
                  color: textColor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                message,
                style: TextStyle(
                  color: textColor,
                  height: 1.5,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: _PanaraButton(
                      onTap: onTapCancel,
                      text: cancelButtonText,
                      bgColor: panaraDialogType == PanaraDialogType.normal
                          ? normal
                          : panaraDialogType == PanaraDialogType.success
                              ? success
                              : panaraDialogType == PanaraDialogType.warning
                                  ? warning
                                  : error,
                      isOutlined: true,
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    flex: 1,
                    child: _PanaraButton(
                      onTap: onTapConfirm,
                      text: confirmButtonText,
                      bgColor: panaraDialogType == PanaraDialogType.normal
                          ? normal
                          : panaraDialogType == PanaraDialogType.success
                              ? success
                              : panaraDialogType == PanaraDialogType.warning
                                  ? warning
                                  : error,
                      isOutlined: false,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
