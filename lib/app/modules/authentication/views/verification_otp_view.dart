import 'package:abo_halab_app/app/modules/authentication/views/reset_password_view.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_button.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_otp_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../resource/app_colors/app_colors.dart';
import '../../../resource/widgets/custom_text.dart';

class VerificationOtpView extends GetView {
  const VerificationOtpView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: ''),
      body: SingleChildScrollView(
        padding: bodyPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height / 20,
            ),
            CustomText(
              title: 'Check your email',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.violetDarkHover,
            ),
            heightBox5,
            CustomText(
              title: 'We sent a reset link to contact@dscode...com enter 6 digit code that mentioned in the email',
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),

            heightBox30,
            CustomOtpWidget(numberOfFields: 6, borderColor: Colors.grey,),
            heightBox20,
            Center(
              child: Text.rich(
                textAlign: TextAlign.center,
                TextSpan(children: [
                  TextSpan(
                    text: 'Didn\'t receive the code?',
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  ),
                  TextSpan(
                    text: ' Resend',
                    style: TextStyle(
                      color: AppColors.mainColor, fontSize: 14, fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: Get.height / 10,
            ),
            CustomButton(
              title: 'Verify',
              onTap: () {
                Get.rawSnackbar(
                  message: 'Verification successful',
                  backgroundColor: Colors.green,
                );
                Get.to(()=>ResetPasswordView());
              },
            ),
          ],
        ),
      ),
    );
  }
}
