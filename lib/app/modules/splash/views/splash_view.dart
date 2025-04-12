import 'package:abo_halab_app/app/resource/app_images/app_images.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Obx(
              () => AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            transform: Matrix4.translationValues(0, controller.logoPosition.value, 0),
            child: Image.asset(
              AppImages.appLogo,
              height: Get.height / 3,
              width: Get.width / 2,
            ),
          ),
        ),
      ),
    );
  }
}
