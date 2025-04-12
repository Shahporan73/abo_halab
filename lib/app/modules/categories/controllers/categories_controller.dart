import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class CategoriesController extends GetxController {
  var selectedCat = ''.obs;
  void switchCategories(String cat){
    selectedCat.value = cat;
  }
}
