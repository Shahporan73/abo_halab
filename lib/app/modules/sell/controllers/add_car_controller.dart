import 'package:get/get.dart';

import '../data_list/car_item_list.dart';

class AddCarController extends GetxController {
  // The RxList is initialized in onInit method
  late RxList<bool> ComfortCheckboxStates;
  late RxList<bool> SafetyCheckboxStates;
  late RxList<bool> EngineAndPerformanceCheckboxStates;
  late RxList<bool> TechnologyCheckboxStates;
  late RxList<bool> exteriorFeaturesCheckboxStates;

  @override
  void onInit() {
    super.onInit();
    ComfortCheckboxStates = RxList<bool>(List.generate(ComfortList.length, (index) => false));
    SafetyCheckboxStates = RxList<bool>(List.generate(safetyFeatures.length, (index) => false));
    EngineAndPerformanceCheckboxStates = RxList<bool>(List.generate(enginePerformanceFeatures.length, (index) => false));
    TechnologyCheckboxStates = RxList<bool>(List.generate(technologyFeatures.length, (index) => false));
    exteriorFeaturesCheckboxStates = RxList<bool>(List.generate(exteriorFeatures.length, (index) => false));
  }


  var checkIs_or_has_the_car_engine_been_tuned = false.obs;

}
