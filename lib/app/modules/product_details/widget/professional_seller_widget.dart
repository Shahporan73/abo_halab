import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/app_images/app_images.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_network_image.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../resource/app_constant/import_list.dart';

class ProfessionalSellerWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String date;
  const ProfessionalSellerWidget({super.key, required this.imageUrl, required this.name, required this.date});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomNetworkImage(
          imageUrl: imageUrl,
          height: Get.height / 12,
          width: Get.width / 6,
          borderRadius: BorderRadius.circular(8),
        ),
        widthBox10,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                title: name,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.violetDarkHover,
              ),
              heightBox5,
              Row(
                children: [
                  Image.asset(AppImages.professionalSellerIcon, height: 20, width: 20,),
                  CustomText(
                    title: 'Professional Seller',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.violetDarkHover,
                  )
                ],
              ),
            ],
          ),
        ),
        widthBox5,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              title: 'Added Date',
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color(0xff706E8F),
            ),
            heightBox5,
            CustomText(
              title: date,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xff706E8F),
            ),
          ],
        ),

      ],
    );
  }
}
