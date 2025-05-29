import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_Text_field.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ChangePasswordView extends GetView {
  const ChangePasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Change password'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 50),
        child: Column(
          children: [
            CustomTextField(
              hint: 'Enter Old Password',
              isLabel: false,
              obscureText: true,
            ),
            heightBox10,
            CustomTextField(
              hint: 'Enter New Password',
              isLabel: false,
              obscureText: true,
            ),
            heightBox10,
            CustomTextField(
              hint: 'Enter Confirm Password',
              isLabel: false,
              obscureText: true,
            ),
            heightBox20,
            CustomButton(
              title: 'Change',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
