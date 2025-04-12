import 'package:get/get.dart';

import 'package:abo_halab_app/app/modules/home/controllers/slider_controller_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SliderController>(
      () => SliderController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
