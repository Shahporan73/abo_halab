import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomSeeAllWidget extends StatelessWidget {
  final String title;
  final String? titleValue;
  final bool? isSeeAll;
  final VoidCallback? onSeeAllPressed;
  const CustomSeeAllWidget({super.key, required this.title, this.titleValue, this.isSeeAll=false, this.onSeeAllPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
          title: title,
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
        Spacer(),
        isSeeAll==true?
          InkWell(
            onTap: onSeeAllPressed,
            child: CustomText(
              title: titleValue ??'',
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: AppColors.mainColor,
            ),
          )
            :SizedBox(),
      ],
    );
  }
}
