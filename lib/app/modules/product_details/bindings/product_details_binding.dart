import 'package:get/get.dart';

import 'package:abo_halab_app/app/modules/product_details/controllers/product_slider_controller.dart';

import '../controllers/product_details_controller.dart';

class ProductDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductSliderController>(
      () => ProductSliderController(),
    );
    Get.lazyPut<ProductDetailsController>(
      () => ProductDetailsController(),
    );
  }
}
