import 'package:get/get.dart';

class TabbarControllerController extends GetxController {
  var selectedIndex = 0.obs;

  // Method to change tab index
  void changeTab(int index) {
    selectedIndex.value = index;
  }

}
