import 'package:abo_halab_app/app/modules/sell/controllers/add_item_caravan_controller.dart';
import 'package:abo_halab_app/app/modules/sell/data_list/caravan_data_list.dart';

import '../../../../resource/app_constant/import_list.dart';
import '../../../../resource/utils/custom_size.dart';
import '../../../../resource/widgets/custom_Text_field.dart';
import '../../../../resource/widgets/custom_check_box_widget.dart';
import '../../../../resource/widgets/custom_drop_down_widget.dart';
import '../../../../resource/widgets/custom_text.dart';

class CaravanFormTwo extends StatelessWidget {
  const CaravanFormTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final AddItemCaravanController caravanController = Get.put(AddItemCaravanController());
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
              children: List.generate(equipmentItems.length, (index) {
                return CustomCheckboxWidget(
                  fontSize: 13,
                  value: caravanController.EquipmentCheckBoxStates[index],
                  onChanged: (bool? newValue) {
                    caravanController.EquipmentCheckBoxStates[index] = newValue ?? false;
                  },
                  label: equipmentItems[index],
                );
              }),
            );
          }),


          heightBox10,
          Text('Condition ', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: ['New', 'Used'],
            hintText: 'Select Condition',
            onChanged: (value) {},
          ),
          heightBox10,
          Text('Mileage', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'ex. 6000',
            isLabel: false,
          ),


          heightBox10,
          Text('Does the caravan have a condition report?', style: titleStyle,),
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
            title: 'The condition report covers all the important points necessary to provide an accurate snapshot of the condition of the caravan.',
            color: Color(0xffB5B5B5),
            fontSize: 10,
          ),


          heightBox10,
          Text('Does the caravan have a warranty?', style: titleStyle,),
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
            title: 'The caravan has a remaining warranty from the supplier or is sold with a warranty from the seller.',
            color: Color(0xffB5B5B5),
            fontSize: 10,
          ),


          heightBox10,
          Text('Video', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'youtube link',
            isLabel: false,
          ),
          heightBox10,
          Text('Description', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Write here...',
            isLabel: false,
          ),
          heightBox10,
          Text('Re-registration fee in NOK', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'ex. 6000',
            isLabel: false,
          ),
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
          heightBox10,
          Text('Selling price in NOK – excl. re-registration (required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'ex. 6000',
            isLabel: false,
          ),
          heightBox10,
          Text('Total price', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'ex. 6000',
            isLabel: false,
          ),
          heightBox10,
          Text('Phone number', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Ex. 12345654544',
            isLabel: false,
          ),
          heightBox10,
          Text('Address (Required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Ex. 47 W 13th St, New York, NY 10011, USA',
            isLabel: false,
          ),

        ],
      ),
    );
  }
}
