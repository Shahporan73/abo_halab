import 'package:get/get.dart';
import 'package:intl/intl.dart'; // For date formatting
import 'package:flutter/material.dart';

class DateOfBirthController extends GetxController {
  var pickedDate = Rx<DateTime?>(null);
  var selectedDate = RxString('');
  var selectedMonth = RxString('');
  var selectedYear = RxString('');

  // TextEditingControllers to bind to the text fields
  late TextEditingController dateController;
  late TextEditingController monthController;
  late TextEditingController yearController;

  @override
  void onInit() {
    super.onInit();
    dateController = TextEditingController();
    monthController = TextEditingController();
    yearController = TextEditingController();

    // Bind the reactive variables to the controllers' text
    ever(selectedDate, (value) => dateController.text = value);
    ever(selectedMonth, (value) => monthController.text = value);
    ever(selectedYear, (value) => yearController.text = value);
  }

  // Function to pick the date and update the reactive variables
  void selectDate(DateTime? date) {
    if (date != null) {
      pickedDate.value = date;
      selectedDate.value = DateFormat('dd').format(date);
      selectedMonth.value = DateFormat('MMMM').format(date);
      selectedYear.value = DateFormat('yyyy').format(date);
    }
  }

  // Function to reset the selected date
  void resetDate() {
    pickedDate.value = null;
    selectedDate.value = '';
    selectedMonth.value = '';
    selectedYear.value = '';
  }

  @override
  void onClose() {
    dateController.dispose();
    monthController.dispose();
    yearController.dispose();
    super.onClose();
  }
}
