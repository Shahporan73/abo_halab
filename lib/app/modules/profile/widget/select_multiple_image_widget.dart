import 'dart:io';

import 'package:abo_halab_app/app/resource/utils/custom_size.dart';

import '../../../resource/app_colors/App_Colors.dart';
import '../../../resource/app_constant/import_list.dart';
import '../../../resource/common_controller/image_picker_controller.dart';
import '../../../resource/widgets/custom_dotted_widget.dart';
import '../../../resource/widgets/custom_text.dart';

class SelectMultipleImageWidget extends StatelessWidget {
  const SelectMultipleImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final ImagePickerController imagePickerController = Get.put(ImagePickerController());
    return Obx(() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomDottedWidget(
              title: 'Upload Image',
              iconData: Icons.cloud_download_outlined,
              containerHeight: Get.height / 6,
            onTap: () {
              imagePickerController.multiplePickBannerImage();
            },
          ),
          heightBox5,
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: imagePickerController.selectedImages.map((path) {
              return Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: FileImage(File(path)),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        imagePickerController.removeImage(path);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.6),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
          imagePickerController.selectedImages.length > 0
              ? Container()
              : CustomText(
            title: 'You can upload multiple images',
            color: AppColors.failedColor,
          ),
        ],
      );
    });
  }
}
