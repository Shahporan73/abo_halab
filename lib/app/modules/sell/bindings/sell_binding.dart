import 'package:get/get.dart';

import 'package:abo_halab_app/app/modules/sell/controllers/add_car_controller.dart';
import 'package:abo_halab_app/app/modules/sell/controllers/add_item_bobil_controller.dart';
import 'package:abo_halab_app/app/modules/sell/controllers/add_item_caravan_controller.dart';
import 'package:abo_halab_app/app/modules/sell/controllers/add_item_controller.dart';
import 'package:abo_halab_app/app/modules/sell/controllers/add_item_motorcycle_controller.dart';
import 'package:abo_halab_app/app/modules/sell/controllers/add_properties_controller.dart';

import '../controllers/sell_controller.dart';

class SellBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddItemMotorcycleController>(
      () => AddItemMotorcycleController(),
    );
    Get.lazyPut<AddItemBobilController>(
      () => AddItemBobilController(),
    );
    Get.lazyPut<AddItemBobilController>(
      () => AddItemBobilController(),
    );
    Get.lazyPut<AddItemCaravanController>(
      () => AddItemCaravanController(),
    );
    Get.lazyPut<AddCarController>(
      () => AddCarController(),
    );
    Get.lazyPut<AddPropertiesController>(
      () => AddPropertiesController(),
    );
    Get.lazyPut<AddItemController>(
      () => AddItemController(),
    );
    Get.lazyPut<SellController>(
      () => SellController(),
    );
  }
}
