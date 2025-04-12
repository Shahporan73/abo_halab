import 'package:abo_halab_app/app/modules/authentication/controllers/authentication_controller.dart';
import 'package:abo_halab_app/app/modules/authentication/views/account_verification_view.dart';
import 'package:abo_halab_app/app/modules/authentication/views/sign_in_view.dart';
import 'package:abo_halab_app/app/modules/authentication/widget/or_continue_with_widget.dart';
import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/app_images/app_images.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_Text_field.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_button.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SignUpView extends GetView {
  const SignUpView({super.key});
  @override
  Widget build(BuildContext context) {
    final AuthenticationController controller =
        Get.put(AuthenticationController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: bodyPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.height / 14,
            ),
            Center(
              child: CustomText(
                title: 'Create Account',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Center(
              child: CustomText(
                title: 'Sign up to get started',
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            heightBox20,
            Center(
              child: Image.asset(
                AppImages.appLogo,
                height: Get.height / 6,
                width: Get.width / 3,
              ),
            ),
            heightBox20,
            CustomTextField(
              labelText: 'First name',
              hint: '',
            ),
            heightBox10,
            CustomTextField(
              labelText: 'Last Name',
              hint: '',
            ),
            heightBox10,
            CustomTextField(
              labelText: 'Email Address',
              hint: '',
            ),
            heightBox10,
            CustomTextField(
              labelText: 'Password',
              hint: '',
              obscureText: true,
            ),
            heightBox10,
            CustomTextField(
              labelText: 'Confirm Password',
              hint: '',
              obscureText: true,
            ),
            heightBox20,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => SizedBox(
                    width: 20,
                    height: 20,
                    child: Checkbox(
                      value: controller.isChecked.value,
                      activeColor: AppColors.mainColor,
                      onChanged: (value) {
                        controller.isChecked.value = value!;
                      },
                    ),
                  ),
                ),
                widthBox5,
                Expanded(
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                        text: 'By creating an account, I accept the',
                        style: TextStyle(color: Colors.black54, fontSize: 13),
                      ),
                      TextSpan(
                        text: 'Terms & Conditions',
                        style: TextStyle(color: Colors.blue, fontSize: 13),
                      ),
                      TextSpan(
                        text: ' and ',
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(color: Colors.blue, fontSize: 13),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
            heightBox20,
            CustomButton(
                title: 'Sign up',
                onTap: () {
                  Get.to(() => const AccountVerificationView());
                }
            ),

            heightBox14,
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                widthBox10,
                CustomText(
                  title: 'Or continue with',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                widthBox10,
                Expanded(
                  child: Divider(
                    thickness: 1,
                  ),
                ),
              ],
            ),
            heightBox14,
            OrContinueWithWidget(
                imagePath: AppImages.facebook,
                title: 'Continue with Facebook',
                onTap: () {},
            ),
            heightBox10,
            OrContinueWithWidget(
              imagePath: AppImages.google,
              title: 'Continue with Google',
              onTap: () {},
            ),
            heightBox10,
            OrContinueWithWidget(
              imagePath: AppImages.apple,
              title: 'Continue with Apple',
              onTap: () {},
            ),
            heightBox10,
            Center(
              child: Text.rich(
                TextSpan(children: [
                  TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  ),
                  TextSpan(
                    text: ' Sign In',
                    style: TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.to(() => const SignInView());
                      },
                  ),
                ]),
              ),
            ),
            heightBox20,
          ],
        ),
      ),
    );
  }
}
