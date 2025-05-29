import 'package:abo_halab_app/app/modules/sell/data_list/caravan_data_list.dart';
import 'package:get/get.dart';

class AddItemCaravanController extends GetxController {
  // The RxList is initialized in onInit method
  late RxList<bool> EquipmentCheckBoxStates;

  @override
  void onInit() {
    super.onInit();
    EquipmentCheckBoxStates = RxList<bool>(List.generate(equipmentItems.length, (index) => false));
  }
}
