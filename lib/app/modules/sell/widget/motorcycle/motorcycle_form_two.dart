import 'package:abo_halab_app/app/modules/sell/controllers/add_item_caravan_controller.dart';
import 'package:abo_halab_app/app/modules/sell/data_list/caravan_data_list.dart';

import '../../../../resource/app_constant/import_list.dart';
import '../../../../resource/utils/custom_size.dart';
import '../../../../resource/widgets/custom_Text_field.dart';
import '../../../../resource/widgets/custom_check_box_widget.dart';
import '../../../../resource/widgets/custom_drop_down_widget.dart';
import '../../../../resource/widgets/custom_text.dart';
import '../../controllers/add_item_motorcycle_controller.dart';
import '../../data_list/motorcycle_data_list.dart';

class MotorcycleFormTwo extends StatelessWidget {
  const MotorcycleFormTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final AddItemMotorcycleController motorcycleController = Get.put(AddItemMotorcycleController());
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Equipments', style: titleStyle),
          heightBox5,
          Obx(() {
            return Wrap(
              spacing: 16.0,
              runSpacing: 8.0,
              children: List.generate(motorcycleEquipmentList.length, (index) {
                return CustomCheckboxWidget(
                  fontSize: 13,
                  value: motorcycleController.motorcycleEquipmentCheckBoxStates[index],
                  onChanged: (bool? newValue) {
                    motorcycleController.motorcycleEquipmentCheckBoxStates[index] = newValue ?? false;
                  },
                  label: motorcycleEquipmentList[index],
                );
              }),
            );
          }),

          // Condition
          heightBox10,
          Text('Condition', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: ['Used', 'New'],
            hintText: 'Select Condition',
            onChanged: (value) {},
          ),

          // Mileage
          heightBox10,
          Text('Mileage', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 15000 km',
            isLabel: false,
          ),

          // Number of owners
          heightBox10,
          Text('Number of Owners', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 2 owners',
            isLabel: false,
          ),

          // Do you have a condition report?
          heightBox10,
          Text('Do you have a condition report?', style: titleStyle),
          heightBox5,
          Row(
            children: [
              CustomCheckboxWidget(
                  width: Get.width / 4,
                  value: true,
                  onChanged: (value) {},
                  label: 'Yes'
              ),
              CustomCheckboxWidget(
                  value: false,
                  onChanged: (value) {},
                  label: 'No'
              )
            ],
          ),

          // Have you followed the motorcycle's maintenance program?
          heightBox10,
          Text('Have you followed the motorcycle\'s maintenance program?', style: titleStyle),
          heightBox5,
          Row(
            children: [
              CustomCheckboxWidget(
                  width: Get.width / 4,
                  value: true,
                  onChanged: (value) {},
                  label: 'Yes'
              ),
              CustomCheckboxWidget(
                  value: false,
                  onChanged: (value) {},
                  label: 'No'
              )
            ],
          ),

          // Warranty type
          heightBox10,
          Text('Warranty Type', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: ["Remaining new motorcycle warranty", "Remaining used motorcycle warranty"],
            hintText: 'Select Warranty Type',
            onChanged: (value) {},
          ),

          // Video
          heightBox10,
          Text('Video', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. https://www.youtube.com/',
            isLabel: false,
          ),

          // Description
          heightBox10,
          Text('Description', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Write a brief description...',
            isLabel: false,
            maxLine: 4,
            vertical_padding: 8,
            height: Get.height / 8,
          ),

          // Re-registration fee in NOK
          heightBox10,
          Text('Re-registration fee in NOK', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 500 NOK',
            isLabel: false,
          ),

          // Exemption from re-registration fee?
          heightBox10,
          Text('Exemption from re-registration fee?', style: titleStyle),
          heightBox5,
          Row(
            children: [
              CustomCheckboxWidget(
                  width: Get.width / 4,
                  value: true,
                  onChanged: (value) {},
                  label: 'Yes'
              ),
              CustomCheckboxWidget(
                  value: false,
                  onChanged: (value) {},
                  label: 'No'
              )
            ],
          ),

          // Selling price in NOK - excl. re-registration (required)
          heightBox10,
          Text('Selling price in NOK - excl. re-registration (required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 15000 NOK',
            isLabel: false,
          ),

          // Total price
          heightBox10,
          Text('Total Price', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 20000 NOK',
            isLabel: false,
          ),

          // Phone number
          heightBox10,
          Text('Phone Number', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 1234567890',
            isLabel: false,
          ),

          // Address (Required)
          heightBox10,
          Text('Address (Required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 47 W 13th St, New York, NY 10011, USA',
            isLabel: false,
          ),
        ],
      ),
    );
  }
}
