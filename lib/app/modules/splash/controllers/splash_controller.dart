import 'package:abo_halab_app/app/modules/on_boarding/views/on_boarding_view.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  var logoPosition = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
    animateLogo();
  }

  void animateLogo() {
    Future.delayed(const Duration(milliseconds: 500), () {
      logoPosition.value = -20.0; // Move up
      Future.delayed(const Duration(seconds: 1), () {
        logoPosition.value = 20.0; // Move down
      });
    });
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(()=>OnBoardingView());
    });
  }
}
