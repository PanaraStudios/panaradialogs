import 'package:flutter/material.dart';
import 'package:panara_dialogs/src/colors.dart';

///
/// This is the Info dialog with 4 different varients as follows:
/// 1. Sucess
/// 2. Normal
/// 3. Warning
/// 4. Error
///
class PanaraInfoDialog {
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
        builder: (context) => Align(
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
                    'lib/assets/info.png',
                    width: 84,
                    height: 84,
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
        ),
      );
}

///
/// This is the Confirmation dialog with 4 different varients as follows:
/// 1. Sucess
/// 2. Normal
/// 3. Warning
/// 4. Error
///
class PanaraConfirmDialog {
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
        builder: (context) => Align(
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
                    'lib/assets/confirm.png',
                    width: 84,
                    height: 84,
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
        ),
      );
}

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

enum PanaraDialogType {
  success,
  normal,
  warning,
  error,
}
