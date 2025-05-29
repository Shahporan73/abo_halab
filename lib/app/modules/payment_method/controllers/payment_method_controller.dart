import 'package:get/get.dart';

class PaymentMethodController extends GetxController {
 var selectedBoost = ''.obs;
 void changeBoostIndex(String index) {
   selectedBoost.value = index;
 }
}
