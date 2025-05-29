import 'package:abo_halab_app/app/modules/sell/controllers/add_item_caravan_controller.dart';
import 'package:abo_halab_app/app/modules/sell/data_list/caravan_data_list.dart';

import '../../../../resource/app_constant/import_list.dart';
import '../../../../resource/utils/custom_size.dart';
import '../../../../resource/widgets/custom_Text_field.dart';
import '../../../../resource/widgets/custom_check_box_widget.dart';
import '../../../../resource/widgets/custom_drop_down_widget.dart';
import '../../../../resource/widgets/custom_text.dart';
import '../../controllers/add_item_bobil_controller.dart';
import '../../data_list/bobil_data_list.dart';

class BobilFormTwo extends StatelessWidget {
  const BobilFormTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final AddItemBobilController bobilController= Get.put(AddItemBobilController());
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Equipments', style: titleStyle,),
          heightBox5,
          Obx(() {
            return Wrap(
              spacing: 16.0,
              runSpacing: 8.0,
              children: List.generate(BobilEquipment.length, (index) {
                return CustomCheckboxWidget(
                  fontSize: 13,
                  value: bobilController.bobilEquipmentCheckBoxStates[index],
                  onChanged: (bool? newValue) {
                    bobilController.bobilEquipmentCheckBoxStates[index] = newValue ?? false;
                  },
                  label: BobilEquipment[index],
                );
              }),
            );
          }),



          // Condition
          heightBox10,
          Text('Condition', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: ['Ny', 'Brukt'],
            hintText: 'Select Condition',
            onChanged: (value) {},
          ),

          // Mileage
          heightBox10,
          Text('Mileage', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'EX: 6000',
            isLabel: false,
          ),

          // Warranty Type
          heightBox10,
          Text('Warranty type', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: ["Resterende ny bobilgarant", "Resterende brukt bobilgarant"],
            hintText: 'Select warranty type',
            onChanged: (value) {},
          ),

          // Does the motorhome have a condition report?
          heightBox10,
          Text('Does the motorhome have a condition report?', style: titleStyle,),
          heightBox5,
          Row(
            children: [
              CustomCheckboxWidget(
                  width: Get.width / 4,
                  value: true,
                  onChanged: (value) {

                  },
                  label: 'Yes'
              ),
              CustomCheckboxWidget(
                  value: false,
                  onChanged: (value) {

                  },
                  label: 'No'
              )
            ],
          ),
          CustomText(
            title: 'The condition report covers all the important points necessary to provide an accurate snapshot of the condition of the motorhome.',
            color: Color(0xffB5B5B5),
            fontSize: 10,
          ),

          // Followed the motorhome maintenance program
          heightBox10,
          Text('Followed the motorhome maintenance program?', style: titleStyle),
          heightBox5,
          Row(
            children: [
              CustomCheckboxWidget(
                  width: Get.width / 4,
                  value: true,
                  onChanged: (value) {

                  },
                  label: 'Yes'
              ),
              CustomCheckboxWidget(
                  value: false,
                  onChanged: (value) {

                  },
                  label: 'No'
              )
            ],
          ),


          // Video link
          heightBox10,
          Text('Video', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'EX: youtube link',
            isLabel: false,
          ),

          // Description
          heightBox10,
          Text('Description', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Write here...',
            isLabel: false,
          ),

          // Re-registration fee in NOK
          heightBox10,
          Text('Re-registration fee in NOK', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'EX: video link',
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
                  onChanged: (value) {

                  },
                  label: 'Yes'
              ),
              CustomCheckboxWidget(
                  value: false,
                  onChanged: (value) {

                  },
                  label: 'No'
              )
            ],
          ),

          // Selling price in NOK - excl. re-registration
          heightBox10,
          Text('Selling price in NOK - excl. re-registration (required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'ex 1000',
            isLabel: false,
          ),

          // Total price
          heightBox10,
          Text('Total price', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'ex 1000',
            isLabel: false,
          ),

          // Phone number
          heightBox10,
          Text('Phone number', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'EX: 123456',
            isLabel: false,
          ),

          // Address
          heightBox10,
          Text('Address (Required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'EX: 47 W 13th St, New York, NY 10011, norway',
            isLabel: false,
          ),


        ],
      ),
    );
  }
}
