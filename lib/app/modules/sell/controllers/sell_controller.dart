import 'package:get/get.dart';

class SellController extends GetxController {

  // Category
  var selectedCategory = ''.obs;
  void updateCategory(String category) {
    selectedCategory.value = category;
  }

  // Property
  var selectedProperty = ''.obs;
  void updateProperty(String category) {
    selectedProperty.value = category;
  }

  // select car type
  var selectedCarType = ''.obs;
  void updateCarType(String category) {
    selectedCarType.value = category;
  }

}
