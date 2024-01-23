import 'package:flutter/material.dart';

///
/// This is the Button widget used in both dialogs.
///
///
class PanaraButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final Color bgColor;
  final Color buttonTextColor;
  final bool isOutlined;

  const PanaraButton({
    Key? key,
    required this.text,
    this.onTap,
    required this.bgColor,
    required this.isOutlined,
    this.buttonTextColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Material(
      color: isOutlined ? theme.buttonTheme.colorScheme?.background : bgColor,
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
              color: isOutlined ? bgColor : buttonTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
