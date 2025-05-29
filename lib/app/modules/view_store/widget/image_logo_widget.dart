import 'package:abo_halab_app/app/modules/view_store/widget/position_back_btn.dart' show PositionBackBtn;
import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/app_constant/cosnt_data.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageLogoWidget extends StatelessWidget {
  const ImageLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 3.2,
      width: Get.width,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            child: CustomNetworkImage(
              imageUrl: bannerImage,
              height: Get.height / 4,
              width: Get.width,
            ),
          ),
          Positioned(
            top: Get.height / 7,
            left: Get.width / 3,
            child: ClipOval(
                clipBehavior: Clip.antiAlias,
                child: Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.black.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 1,
                        )
                      ]
                  ),
                  child: CustomNetworkImage(
                    boxShape: BoxShape.circle,
                    imageUrl: profileImage,
                    height: Get.height / 6,
                    width: Get.width / 3,
                  ),
                ),
            ),
          ),
          PositionBackBtn(),

        ],
      ),
    );
  }
}