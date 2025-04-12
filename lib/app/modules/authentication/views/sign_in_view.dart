import 'package:abo_halab_app/app/modules/authentication/controllers/authentication_controller.dart';
import 'package:abo_halab_app/app/modules/authentication/views/enable_location_view.dart';
import 'package:abo_halab_app/app/modules/authentication/views/sign_up_view.dart';
import 'package:abo_halab_app/app/resource/app_images/app_images.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_Text_field.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_button.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../resource/app_colors/app_colors.dart';
import 'forgot_password_view.dart';

class SignInView extends GetView {
  const SignInView({super.key});
  @override
  Widget build(BuildContext context) {
    final AuthenticationController controller = Get.put(AuthenticationController());
    return Scaffold(
     backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: bodyPadding,
        child: Column(
          children: [
            SizedBox(
              height: Get.height / 10,
            ),
            Center(
              child: CustomText(
                title: 'Log In',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Center(
              child: CustomText(
                title: 'Log in to access your account',
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
              labelText: 'Email Address',
              hint: '',
            ),
            heightBox10,
            CustomTextField(
              labelText: 'Password',
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
                      value: controller.isRemember.value,
                      activeColor: AppColors.mainColor,
                      onChanged: (value) {
                        controller.isRemember.value = value!;
                      },
                    ),
                  ),
                ),
                widthBox10,
                CustomText(
                  title: 'Remember me',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Get.to(() => const ForgotPasswordView());
                  },
                  child: CustomText(
                    title: 'Forgot Password?',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.mainColor,
                  ),
                ),
              ],
            ),
            heightBox20,

            CustomButton(
                title: 'Log In',
                onTap: () {
                  Get.to(() => const EnableLocationView());
                }
            ),

            heightBox20,
            Center(
              child: Text.rich(
                TextSpan(children: [
                  TextSpan(
                    text: 'Don\'t have an account? ',
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  ),
                  TextSpan(
                    text: 'Sign Up',
                    style: TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.to(() => const SignUpView()
                        );
                      },
                  ),
                ]),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
