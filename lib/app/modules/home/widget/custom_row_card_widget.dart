import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resource/widgets/custom_network_image.dart';

class CustomRowCardWidget extends StatelessWidget {
  const CustomRowCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 1),
      child: Container(
        height: Get.height,
        width: Get.width / 1.6,
        margin: EdgeInsets.only(right: 8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            boxShadow: [
              BoxShadow(
                  color: AppColors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1))
            ],),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height / 8,
              child: Stack(
                children: [
                  Positioned.fill(
                      child: CustomNetworkImage(
                    imageUrl:
                        'https://waltonbd.com/image/catalog/category-banner/refrigerator/freezer-to-fridge-switch-whenever-you-need.jpg',
                    fit: BoxFit.cover,
                    height: Get.height / 8,
                    width: Get.width,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                  )),
                ],
              ),
            ),
            heightBox5,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomText(
                        title: 'Dominos Pizza - Banasree',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                      Spacer(),
                      Icon(
                        Icons.star,
                        color: AppColors.mainColor,
                        size: 12,
                      ),
                      SizedBox(
                        width: 1,
                      ),
                      CustomText(
                        title: '3.2',
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                      )
                    ],
                  ),
                  heightBox5,
                  Row(
                    children: [
                      CustomText(title: 'Delicouse tackos, appetizing...', fontSize: 12),
                      Spacer(),
                      CustomText(
                        title: '\$21',
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
