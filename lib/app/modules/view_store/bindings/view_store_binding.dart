import 'package:get/get.dart';

import 'package:abo_halab_app/app/modules/view_store/controllers/tabbar_controller_controller.dart';

import '../controllers/view_store_controller.dart';

class ViewStoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabbarControllerController>(
      () => TabbarControllerController(),
    );
    Get.lazyPut<ViewStoreController>(
      () => ViewStoreController(),
    );
  }
}
