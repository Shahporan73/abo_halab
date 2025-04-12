import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

String formatTime24hr(String dateTimeStr) {
  DateTime dateTime = DateTime.parse(dateTimeStr);
  return DateFormat('HH:mm').format(dateTime);
}

/// Function to format 24-hour time to 12-hour format with AM/PM
String formatTime12hr(String time24hr) {
  try {
    DateTime time = DateFormat("HH:mm").parse(time24hr);
    return DateFormat("h:mm a").format(time);
  } catch (e) {
    if (kDebugMode) {
      print("Error formatting time: $e");
    }
    return time24hr;
  }
}