import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  final PageController pageController = PageController();
  RxInt currentPage = 0.obs;

  void skip() {
    Get.toNamed('/authentication');
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
