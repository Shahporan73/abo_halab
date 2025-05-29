import 'dart:io';

import 'package:abo_halab_app/app/data/local_database/local_storage.dart' show StorageService;
import 'package:abo_halab_app/app/resource/app_constant/cosnt_data.dart';
import 'package:abo_halab_app/app/resource/common_controller/date_of_birth_picker_controller.dart';
import 'package:abo_halab_app/app/resource/common_controller/image_picker_controller.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_Text_field.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_button.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_dotted_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_image_picker.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../resource/app_colors/App_Colors.dart' show AppColors;
import '../../../resource/widgets/custom_network_image.dart'
    show CustomNetworkImage;

class CreateStoreView extends GetView {
  CreateStoreView({super.key});
  final ImagePickerController imagePickerController =
      Get.put(ImagePickerController());

  final DateOfBirthController dateOfBirthController =
      Get.put(DateOfBirthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Create Store'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // select image
            heightBox10,
            Center(
              child: Stack(
                children: [
                  Obx(
                    () => ClipOval(
                      child: imagePickerController
                              .selectedImagePath.value.isNotEmpty
                          ? Image.file(
                              File(imagePickerController
                                  .selectedImagePath.value),
                              width: Get.width / 3,
                              height: Get.height / 6,
                              fit: BoxFit.cover,
                            )
                          : CustomNetworkImage(
                              imageUrl: placeholderImage,
                              width: Get.width / 3,
                              height: Get.height / 6,
                            ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
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
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: AppColors.mainColor,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // select banner image
            heightBox10,
            Text(
              'Upload Banner',
              style: titleStyle,
            ),
            heightBox5,
            Obx(
              () => CustomDottedWidget(
                title: "Select a file to drop it here",
                iconData: Icons.cloud_upload_outlined,
                containerHeight: Get.height / 8,
                centerWidget: imagePickerController
                        .selectedBannerPath.value.isNotEmpty
                    ? Image.file(
                        File(imagePickerController.selectedBannerPath.value),
                        height: Get.height / 8,
                        fit: BoxFit.fitWidth,
                      )
                    : null,
                onTap: () {
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
              ),
            ),

            heightBox10,
            CustomTextField(
              labelText: 'Full Name',
              hint: 'Enter full name',
            ),
            heightBox10,
            CustomTextField(
              labelText: 'Phone Number',
              hint: 'Enter Phone Number',
            ),
            heightBox10,
            CustomTextField(
              labelText: 'Phone Number',
              hint: 'Enter Phone Number',
            ),

            heightBox10,
            CustomTextField(
              labelText: 'Address',
              hint: 'Enter Address',
            ),

            heightBox10,
            CustomTextField(
              labelText: 'Email',
              hint: 'Enter Email',
            ),

            heightBox10,
            InkWell(
              onTap: () {
                print('Date of Birth tapped');
                _selectDate(context);
              },
              child: Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      controller: dateOfBirthController.dateController,
                      hint: 'Date',
                      isLabel: false,
                      readOnly: true,
                      onTap: () => _selectDate(context),
                    ),
                  ),
                  widthBox10,
                  Expanded(
                    child: CustomTextField(
                      controller: dateOfBirthController.monthController,
                      hint: 'Month',
                      isLabel: false,
                      readOnly: true,
                      onTap: () => _selectDate(context),
                    ),
                  ),
                  widthBox10,
                  Expanded(
                    child: CustomTextField(
                      controller: dateOfBirthController.yearController,
                      hint: 'Year',
                      isLabel: false,
                      readOnly: true,
                      onTap: () => _selectDate(context),
                    ),
                  ),
                ],
              ),
            ),

            heightBox10,
            CustomTextField(
              labelText: 'Bio',
              hint: 'Enter Bio',
              maxLine: 3,
              vertical_padding: 8,
              height: Get.height / 10,
            ),

            heightBox20,
            CustomButton(
                title: 'Create',
                onTap: () async{
                  final StorageService storageService = StorageService();

                  imagePickerController.selectedImagePath.value = '';
                  imagePickerController.selectedBannerPath.value = '';
                  Get.rawSnackbar(
                    message: 'Create store successfully',
                  );
                  await storageService.write(createdStore, 'professional_account');
                  print('Created ${storageService.read(createdStore)}');
                  Navigator.pop(context);
                }
            ),

            heightBox20,
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime currentDate = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: dateOfBirthController.pickedDate.value ??
          DateTime(currentDate.year - 18),
      firstDate: DateTime(1900),
      lastDate: currentDate,
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.blue,
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      dateOfBirthController.selectDate(picked);
    }
  }
}
