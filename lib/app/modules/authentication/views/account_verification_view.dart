import 'package:abo_halab_app/app/modules/authentication/views/sign_up_verification.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_button.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_country_code_with_field.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../resource/app_images/app_images.dart';

class AccountVerificationView extends GetView {
  const AccountVerificationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: bodyPadding,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: Get.height / 10,
                child: InkWell(
                    onTap: (){},
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    )
                ),
              ),
            ),
            Center(
              child: Image.asset(
                AppImages.accountVerify,
                height: Get.height / 6,
                width: Get.width / 3,
              ),
            ),
            heightBox10,
            Center(
              child: CustomText(
                  title: 'Account Verification',
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),
            ),
            heightBox10,
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: CustomText(
                    title: 'We need to send a verification code to your current phone number to verify your account.',
                    fontSize: 14,
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),

            heightBox50,
            CustomCountryCodeWithField(hintText: 'Enter Phone Number',),

            SizedBox(
              height: Get.height / 4,
            ),
            CustomButton(
                title: 'Continue',
                onTap: () {
                  Get.to(()=> const SignUpVerificationView());
                }
            ),

          ],
        ),
      ),
    );
  }
}
