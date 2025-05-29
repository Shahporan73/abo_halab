// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'custom_text.dart';

class CustomDottedWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final Color dottedColor;
  final Color buttonColor;
  final Color textColor;
  final Widget? centerWidget;
  final double? containerHeight;
  final double? containerWidth;
  final String title;
  final IconData? iconData;
  final double? fontSize;
  CustomDottedWidget({
    super.key,
    this.onTap,
    this.dottedColor = Colors.black,
    this.buttonColor = Colors.black,
    this.textColor = Colors.black,
    this.centerWidget,
    this.containerHeight,
    this.containerWidth,
    required this.title,
    this.iconData, this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          DottedBorder(
            color: dottedColor,
            strokeWidth: 1,
            dashPattern: const [6, 3],
            // Length of dashes and gaps
            borderType: BorderType.RRect,
            radius: Radius.circular(6),
            child: Container(
              width: containerWidth ?? width,
              height: containerHeight ?? 150,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
            ),
          ),
          Positioned.fill(
            child: centerWidget ??
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      iconData?? Icons.add,
                      size: 28,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomText(
                      title: title,
                      fontSize: fontSize ?? 14,
                      fontWeight: FontWeight.w500,
                      color: textColor,
                    ),
                  ],
                ),
          ),
        ],
      ),
    );
  }
}
