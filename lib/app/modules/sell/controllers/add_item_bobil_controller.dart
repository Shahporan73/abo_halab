import 'package:get/get.dart';

import '../data_list/bobil_data_list.dart';

class AddItemBobilController extends GetxController {
  // The RxList is initialized in onInit method
  late RxList<bool> bobilEquipmentCheckBoxStates;

  @override
  void onInit() {
    super.onInit();
    bobilEquipmentCheckBoxStates = RxList<bool>(List.generate(BobilEquipment.length, (index) => false));
  }
}
