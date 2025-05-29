import 'package:abo_halab_app/app/modules/sell/controllers/add_properties_controller.dart';
import 'package:abo_halab_app/app/modules/sell/data_list/car_item_list.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_check_box_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_drop_down_widget.dart';

import '../../../../resource/app_constant/import_list.dart';
import '../../../../resource/utils/custom_size.dart';
import '../../../../resource/widgets/custom_Text_field.dart';
import '../../../../resource/widgets/custom_text.dart';
import '../../controllers/add_car_controller.dart';
import '../../data_list/car_item_list.dart';

class CarFormTwo extends StatelessWidget {
  const CarFormTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final AddCarController controller = Get.put(AddCarController());
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Body type (required)', style: titleStyle),
          CustomDropDownWidget(
            items: ["Convertible", "Coupe", "MPV", "Box", "3-door Hatchback", "5-door Hatchback", "Pickup", "SUV/Offroad", "Sedan", "Estate", "Other"],
            hintText: 'Select body type',
          ),
          heightBox10,

          Text('Number of seats (required)', style: titleStyle),
          CustomText(title: '(Total passenger seating capacity)', fontSize: 10),
          heightBox5,
          CustomTextField(
            hint: 'Ex., 4',
            isLabel: false,
          ),

          heightBox10,
          Text('Number of doors', style: titleStyle),
          CustomText(title: '(Typically 2, 4, or 5)', fontSize: 10),
          heightBox5,
          CustomTextField(
            hint: 'Ex., 4',
            isLabel: false,
          ),
          heightBox10,

          Text('Trunk volume in liters', style: titleStyle),
          CustomText(title: '(Total volume capacity of the trunk)', fontSize: 10),
          heightBox5,
          CustomTextField(
            hint: 'Ex., 450',
            isLabel: false,
          ),
          heightBox10,

          Text('Vehicle weight in kg', style: titleStyle),
          CustomText(title: '(Unladen vehicle weight)', fontSize: 10),
          heightBox5,
          CustomTextField(
            hint: 'Ex., 500 kg',
            isLabel: false,
          ),
          heightBox10,

          Text('Max. trailer weight in kg', style: titleStyle),
          CustomText(title: '(Maximum towable trailer weight)', fontSize: 10),
          heightBox5,
          CustomTextField(
            hint: 'Ex., 500 kg',
            isLabel: false,
          ),


          heightBox10,
          Text('Main color (required)', style: titleStyle),
          CustomText(title: '(Vehicle exterior color)', fontSize: 10),
          heightBox5,
          CustomTextField(
            hint: 'Ex., black',
            isLabel: false,
          ),


          heightBox10,
          Text('Color description', style: titleStyle),
          CustomDropDownWidget(
            items: ["Sun Yellow", "Sky Blue", "Obsidian Black", "Glacier White"],
            hintText: 'Select color description',
          ),
          heightBox10,

          Text('Interior color', style: titleStyle),
          CustomDropDownWidget(
            items: ["Carbon Black", "Starry Sky", "Sea Green", "Titanium Gray"],
            hintText: 'Select Interior color',
          ),



          heightBox10,
          Text('Comfort', style: titleStyle,),
          heightBox5,
          Obx(() {
            return Wrap(
              spacing: 16.0,
              runSpacing: 8.0,
              children: List.generate(ComfortList.length, (index) {
                return CustomCheckboxWidget(
                  fontSize: 13,
                  value: controller.ComfortCheckboxStates[index],
                  onChanged: (bool? newValue) {
                    controller.ComfortCheckboxStates[index] = newValue ?? false;
                  },
                  label: ComfortList[index],
                );
              }),
            );
          }),


          heightBox10,
          Text('Safety', style: titleStyle,),
          heightBox5,
          Obx(() {
            return Wrap(
              spacing: 16.0,
              runSpacing: 8.0,
              children: List.generate(safetyFeatures.length, (index) {
                return CustomCheckboxWidget(
                  fontSize: 13,
                  value: controller.SafetyCheckboxStates[index],
                  onChanged: (bool? newValue) {
                    controller.SafetyCheckboxStates[index] = newValue ?? false;
                  },
                  label: safetyFeatures[index],
                );
              }),
            );
          }),


          heightBox10,
          Text('Engine and performance', style: titleStyle,),
          heightBox5,
          Obx(() {
            return Wrap(
              spacing: 16.0,
              runSpacing: 8.0,
              children: List.generate(enginePerformanceFeatures.length, (index) {
                return CustomCheckboxWidget(
                  fontSize: 13,
                  value: controller.exteriorFeaturesCheckboxStates[index],
                  onChanged: (bool? newValue) {
                    controller.exteriorFeaturesCheckboxStates[index] = newValue ?? false;
                  },
                  label: enginePerformanceFeatures[index],
                );
              }),
            );
          }),


          heightBox10,
          Text('Technology', style: titleStyle,),
          heightBox5,
          Obx(() {
            return Wrap(
              spacing: 16.0,
              runSpacing: 8.0,
              children: List.generate(technologyFeatures.length, (index) {
                return CustomCheckboxWidget(
                  fontSize: 13,
                  value: controller.TechnologyCheckboxStates[index],
                  onChanged: (bool? newValue) {
                    controller.TechnologyCheckboxStates[index] = newValue ?? false;
                  },
                  label: technologyFeatures[index],
                );
              }),
            );
          }),

          heightBox10,
          Text('Exterior', style: titleStyle,),
          heightBox5,
          Obx(() {
            return Wrap(
              spacing: 16.0,
              runSpacing: 8.0,
              children: List.generate(exteriorFeatures.length, (index) {
                return CustomCheckboxWidget(
                  fontSize: 13,
                  value: controller.exteriorFeaturesCheckboxStates[index],
                  onChanged: (bool? newValue) {
                    controller.exteriorFeaturesCheckboxStates[index] = newValue ?? false;
                  },
                  label: exteriorFeatures[index],
                );
              }),
            );
          }),






        ],
      ),
    );
  }
}
