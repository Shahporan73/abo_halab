import 'package:abo_halab_app/app/resource/app_images/app_images.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_Text_field.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SupportView extends GetView {
  const SupportView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Support'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                AppImages.supportImage,
                height: Get.height / 4,
                width: Get.width / 2,
              ),
            ),
            heightBox10,
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    hint: 'First name',
                    isLabel: false,
                  ),
                ),
                widthBox10,
                Expanded(
                  child: CustomTextField(
                    hint: 'Last name',
                    isLabel: false,
                  ),
                )
              ],
            ),
            heightBox10,
            CustomTextField(
                hint: 'Email',
              isLabel: false,
              keyboardType: TextInputType.emailAddress,
            ),
            heightBox10,
            CustomTextField(
              hint: 'Enter phone Number',
              isLabel: false,
              keyboardType: TextInputType.number,
            ),

            heightBox10,
            CustomTextField(
              hint: 'Your message...',
              isLabel: false,
              keyboardType: TextInputType.text,
              height: Get.height / 7,
              maxLine: 5,
              vertical_padding: 12,
            ),

            heightBox20,
            CustomButton(
                title: 'Submit',
                onTap: (){
                  Navigator.pop(context);
                }
            )

          ],
        ),
      ),
    );
  }
}
