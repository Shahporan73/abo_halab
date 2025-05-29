import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart'
    show CustomAppBar;
import 'package:abo_halab_app/app/resource/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_Text_field.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:abo_halab_app/app/resource/common_controller/date_of_birth_picker_controller.dart';

class EditProfileView extends GetView {
  EditProfileView({super.key});
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final DateOfBirthController dateOfBirthController =
      Get.put(DateOfBirthController());

  @override
  Widget build(BuildContext context) {
    nameController.text = 'Abo Halab';
    phoneController.text = '+1 650-289-9054';

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Edit profile'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              labelText: 'Full Name',
              hint: 'Enter name',
              controller: nameController,
            ),
            heightBox10,
            CustomTextField(
              labelText: 'Phone Number',
              hint: 'Enter phone number',
              controller: phoneController,
            ),
            heightBox10,
            CustomText(
              title: 'Date of Birth',
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
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
            CustomText(
              title: 'Bio',
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
            heightBox10,
            CustomTextField(
              labelText: 'Bio',
              isLabel: false,
              height: Get.height / 6,
              vertical_padding: 16,
              maxLine: 5,
              hint: 'Bio',
            ),
            heightBox20,
            CustomButton(
              title: 'Update',
              onTap: () {
                Navigator.pop(context);
              },
            ),
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
