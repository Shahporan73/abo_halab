import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class SeeMoreTextWidget extends StatefulWidget {
  final String text;
  final int maxLines;

  SeeMoreTextWidget({required this.text, this.maxLines = 3});

  @override
  _SeeMoreTextWidgetState createState() => _SeeMoreTextWidgetState();
}

class _SeeMoreTextWidgetState extends State<SeeMoreTextWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedCrossFade(
          firstChild: CustomText(
            title: widget.text,
            maxLines: widget.maxLines,
            overflow: TextOverflow.ellipsis,
            fontSize: 14,
          ),
          secondChild: CustomText(
            title: widget.text,
            fontSize: 14,
          ),
          crossFadeState: _isExpanded
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
          duration: Duration(milliseconds: 300),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Text(
            _isExpanded ? "See less" : "See more",
            style: TextStyle(
                color: _isExpanded ? AppColors.primary : AppColors.mainColor,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ],
    );
  }
}
