import 'package:flutter/material.dart';
import 'package:panara_dialogs/src/constants/colors.dart';
import 'package:panara_dialogs/src/constants/panara_dialog_type.dart';
import 'package:panara_dialogs/src/widgets/panara_button.dart';

///
/// This is the PanaraConfirmDialogWidget.
///
class PanaraConfirmDialogWidget extends StatelessWidget {
  final String? title;
  final String message;
  final String? imagePath;
  final String confirmButtonText;
  final String cancelButtonText;
  final VoidCallback onTapConfirm;
  final VoidCallback onTapCancel;
  final PanaraDialogType panaraDialogType;
  final Color? color;
  final Color? textColor;
  final Color? buttonTextColor;
  const PanaraConfirmDialogWidget({
    Key? key,
    this.title,
    required this.message,
    required this.confirmButtonText,
    required this.cancelButtonText,
    required this.onTapConfirm,
    required this.onTapCancel,
    required this.panaraDialogType,
    this.color,
    this.textColor = const Color(0xFF707070),
    this.buttonTextColor = Colors.white,
    this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Material(
        color: Colors.transparent,
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 340,
          ),
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
                imagePath ?? 'packages/panaradialogs/assets/confirm.png',
                width: 84,
                height: 84,
                color: panaraDialogType == PanaraDialogType.normal
                    ? normal
                    : panaraDialogType == PanaraDialogType.success
                        ? success
                        : panaraDialogType == PanaraDialogType.warning
                            ? warning
                            : panaraDialogType == PanaraDialogType.error
                                ? error
                                : color,
              ),
              const SizedBox(
                height: 24,
              ),
              if (title != null)
                Text(
                  title ?? "",
                  style: TextStyle(
                    fontSize: 24,
                    height: 1.2,
                    fontWeight: FontWeight.w600,
                    color: textColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              if (title != null)
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
                    child: PanaraButton(
                      onTap: onTapCancel,
                      text: cancelButtonText,
                      bgColor: panaraDialogType == PanaraDialogType.normal
                          ? normal
                          : panaraDialogType == PanaraDialogType.success
                              ? success
                              : panaraDialogType == PanaraDialogType.warning
                                  ? warning
                                  : panaraDialogType == PanaraDialogType.error
                                      ? error
                                      : color ?? const Color(0xFF179DFF),
                      isOutlined: true,
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    flex: 1,
                    child: PanaraButton(
                      buttonTextColor: buttonTextColor ?? Colors.white,
                      onTap: onTapConfirm,
                      text: confirmButtonText,
                      bgColor: panaraDialogType == PanaraDialogType.normal
                          ? normal
                          : panaraDialogType == PanaraDialogType.success
                              ? success
                              : panaraDialogType == PanaraDialogType.warning
                                  ? warning
                                  : panaraDialogType == PanaraDialogType.error
                                      ? error
                                      : color ?? const Color(0xFF179DFF),
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
