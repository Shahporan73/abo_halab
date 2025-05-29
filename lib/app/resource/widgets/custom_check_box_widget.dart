import 'package:flutter/material.dart';

class CustomCheckboxWidget extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final String label;
  final double? checkboxSize;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? activeColor;
  final Color? checkColor;
  final Color? labelColor;
  final double? width;
  final double? height;
  final double? spacing;
  final MainAxisAlignment? alignment;

  const CustomCheckboxWidget({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.label,
    this.checkboxSize,
    this.fontSize,
    this.fontWeight,
    this.activeColor,
    this.checkColor,
    this.labelColor,
    this.width,
    this.height,
    this.spacing,
    this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? (MediaQuery.of(context).size.width - 48) / 2,
      height: height,
      child: Row(
        mainAxisAlignment: alignment ?? MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: checkboxSize ?? 24,
            height: checkboxSize ?? 24,
            child: Checkbox(
              value: value,
              onChanged: onChanged,
              activeColor: activeColor ?? Theme.of(context).primaryColor,
              checkColor: checkColor ?? Colors.white,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          ),
          SizedBox(width: spacing ?? 8),
          Flexible(
            child: Text(
              label,
              style: TextStyle(
                fontSize: fontSize ?? 14,
                fontWeight: fontWeight ?? FontWeight.normal,
                color: labelColor ?? Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
