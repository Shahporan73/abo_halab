import 'package:get/get.dart';

import '../controllers/your_product_controller.dart';

class YourProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<YourProductController>(
      () => YourProductController(),
    );
  }
}
