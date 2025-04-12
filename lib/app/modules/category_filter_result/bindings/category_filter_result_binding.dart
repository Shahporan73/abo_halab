import 'package:get/get.dart';

import '../controllers/category_filter_result_controller.dart';

class CategoryFilterResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryFilterResultController>(
      () => CategoryFilterResultController(),
    );
  }
}
