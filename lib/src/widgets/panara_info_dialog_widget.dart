import 'package:flutter/material.dart';
import 'package:panara_dialogs/src/constants/colors.dart';
import 'package:panara_dialogs/src/constants/panara_dialog_type.dart';
import 'package:panara_dialogs/src/widgets/panara_button.dart';

///
/// PanaraInfoDialogWidget, you can use it separatly if you want.
///
class PanaraInfoDialogWidget extends StatelessWidget {
  final String? title;
  final String message;
  final String? imagePath;
  final String buttonText;
  final VoidCallback onTapDismiss;
  final PanaraDialogType panaraDialogType;
  final Color? color;
  final Color? textColor;
  final Color? buttonTextColor;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  const PanaraInfoDialogWidget({
    Key? key,
    this.title,
    required this.message,
    required this.buttonText,
    required this.onTapDismiss,
    required this.panaraDialogType,
    this.textColor = const Color(0xFF707070),
    this.color = const Color(0xFF179DFF),
    this.buttonTextColor,
    this.imagePath,
    this.padding = const EdgeInsets.all(24),
    this.margin = const EdgeInsets.all(24),
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
          margin: margin ?? const EdgeInsets.all(24),
          padding: padding ?? const EdgeInsets.all(24),
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
                imagePath ?? 'packages/panaradialogs/assets/info.png',
                width: 84,
                height: 84,
                color: imagePath != null
                    ? null
                    : (panaraDialogType == PanaraDialogType.normal
                        ? normal
                        : panaraDialogType == PanaraDialogType.success
                            ? success
                            : panaraDialogType == PanaraDialogType.warning
                                ? warning
                                : panaraDialogType == PanaraDialogType.error
                                    ? error
                                    : color),
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
              PanaraButton(
                buttonTextColor: buttonTextColor ?? Colors.white,
                text: buttonText,
                onTap: onTapDismiss,
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
            ],
          ),
        ),
      ),
    );
  }
}
