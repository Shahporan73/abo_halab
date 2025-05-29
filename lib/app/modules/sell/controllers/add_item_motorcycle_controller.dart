import 'package:get/get.dart';

import '../data_list/motorcycle_data_list.dart';

class AddItemMotorcycleController extends GetxController {
  // The RxList is initialized in onInit method
  late RxList<bool> motorcycleEquipmentCheckBoxStates;

  @override
  void onInit() {
    super.onInit();
    motorcycleEquipmentCheckBoxStates = RxList<bool>(List.generate(motorcycleEquipmentList.length, (index) => false));
  }
}
