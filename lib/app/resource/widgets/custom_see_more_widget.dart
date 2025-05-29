import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/app_constant/import_list.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomSeeMoreTextWidget extends StatefulWidget {
  final String text;
  final int maxLines;
  final TextStyle? style;
  final double? fontSize;
  final double? seeMoreFontSize;

  const CustomSeeMoreTextWidget({required this.text, this.maxLines = 3, this.style, this.fontSize, this.seeMoreFontSize});

  @override
  _CustomSeeMoreTextWidgetState createState() => _CustomSeeMoreTextWidgetState();
}

class _CustomSeeMoreTextWidgetState extends State<CustomSeeMoreTextWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    // Calculate the number of lines the text would take with the given constraints
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: widget.text),
      textDirection: TextDirection.ltr,
      maxLines: widget.maxLines,
    )..layout(maxWidth: MediaQuery.of(context).size.width / 1.1);

    bool shouldShowSeeMore = textPainter.didExceedMaxLines;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedCrossFade(
          firstChild: CustomText(
            title: widget.text,
            maxLines: widget.maxLines,
            overflow: TextOverflow.ellipsis,
            fontSize: widget.fontSize ?? 14,
            style: widget.style,
          ),
          secondChild: CustomText(
            title: widget.text,
            fontSize: widget.fontSize ??  14,
            style: widget.style,
          ),
          crossFadeState: _isExpanded
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
          duration: Duration(milliseconds: 300),
        ),
        if (shouldShowSeeMore)
          GestureDetector(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            child: Text(
              _isExpanded ? "See less" : "See more",
              style: GoogleFonts.poppins(
                color: _isExpanded ? AppColors.primary : AppColors.mainColor,
                fontWeight: FontWeight.w500,
                fontSize: widget.seeMoreFontSize ?? 12,
              ),
            ),
          ),
      ],
    );
  }
}
