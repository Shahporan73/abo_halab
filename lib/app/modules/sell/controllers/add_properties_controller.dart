import 'package:get/get.dart';

class AddPropertiesController extends GetxController {
  // Labels for the checkboxes
  final List<String> labels = [
    'Air Conditioning',
    'Rooftop Terrace',
    'Shared Laundry',
    'Fireplace',
    'Scenic View',
    'Fishing Spot',
    'Alarm System',
    'Parking/Garage',
    'Cable TV',
    'Public Water',
    'Quiet Area',
    'Security Service',
    'Beachfront',
    'Hiking Trails',
    'Modern',
    'High-Speed Internet',
    'Elevator',
    'EV Charging',
    'Hardwood Floors',
    'Central Location',
    'Swimming Spot',
    'No Neighbors',
  ];

  // The RxList is initialized in onInit method
  late RxList<bool> checkboxStates;

  @override
  void onInit() {
    super.onInit();
    checkboxStates = RxList<bool>(List.generate(labels.length, (index) => false));
  }
}
