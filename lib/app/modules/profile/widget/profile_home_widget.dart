import 'dart:io';

import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/common_controller/image_picker_controller.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_image_picker.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_network_image.dart';
import 'package:flutter/material.dart';

import '../../../resource/app_constant/import_list.dart';
import '../../../resource/widgets/custom_text.dart' show CustomText;

class ProfileHomeWidget extends StatelessWidget {
  final String profileImage;
  final Widget child;
  const ProfileHomeWidget(
      {super.key, required this.profileImage, required this.child});

  @override
  Widget build(BuildContext context) {
    final ImagePickerController imagePickerController =
        Get.put(ImagePickerController());

    return Stack(
      children: [
        Container(
          width: Get.width,
          height: Get.height,
          margin: EdgeInsets.only(top: Get.height / 12),
          padding: EdgeInsets.only(left: 16, right: 16, top: Get.height / 12),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: child,
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          child: Center(
            child: InkWell(
              onTap: () {
                print('object');
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return ImagePickerDialog(
                      onImagePicked: (source) {
                        imagePickerController.profilePickImage(source);
                      },
                    );
                  },
                );
              },
              child: Obx(
                () {
                  final imagePath =
                      imagePickerController.selectedImagePath.value;
                  return ClipOval(
                    child: imagePath.isNotEmpty
                        ? Image.file(
                            File(
                              imagePath,
                            ),
                            height: Get.height / 6,
                            width: Get.width / 3,
                            fit: BoxFit.cover,
                          )
                        : CustomNetworkImage(
                            imageUrl: profileImage,
                            height: Get.height / 6,
                            width: Get.width / 3,
                            fit: BoxFit.cover,
                          ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
