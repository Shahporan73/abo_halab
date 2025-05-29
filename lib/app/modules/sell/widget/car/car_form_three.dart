import 'package:abo_halab_app/app/resource/widgets/custom_dotted_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';

import '../../../../resource/app_constant/import_list.dart';
import '../../../../resource/utils/custom_size.dart';
import '../../../../resource/widgets/custom_Text_field.dart';
import '../../../../resource/widgets/custom_check_box_widget.dart';
import '../../../../resource/widgets/custom_drop_down_widget.dart';

class CarFormThree extends StatelessWidget {
  const CarFormThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text('Mileage (required)', style: titleStyle),
          CustomTextField(
            hint: 'Ex. 4',
            isLabel: false,
          ),


          heightBox10,
          Text('Does the vehicle have any known defects, deficiencies or visible damage?', style: titleStyle,),
          heightBox5,
          Row(
            children: [
              CustomCheckboxWidget(
                  width: Get.width / 4,
                  value: false,
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
            title: 'Visible damage includes dents, rust, stone chips or scratches that '
                'you are aware of and should inform the buyer of when purchasing the vehicle.',
            color: Color(0xffB5B5B5),
            fontSize: 10,
          ),

          heightBox10,
          Text('Have any major repairs been made?', style: titleStyle,),
          heightBox5,
          Row(
            children: [
              CustomCheckboxWidget(
                  width: Get.width / 4,
                  value: false,
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
            title: 'If the vehicle has been repaired after a collision, repainted or has had other material upgrades, this should be included in the contract.',
            color: Color(0xffB5B5B5),
            fontSize: 10,
          ),

          heightBox10,
          Text('First registered (date)', style: titleStyle),
          CustomTextField(
            hint: 'Ex. 03-12-2025',
            isLabel: false,
          ),
          heightBox10,

          Text('Last EU approved (date)', style: titleStyle),
          CustomTextField(
            hint: 'Ex. 03-12-2025',
            isLabel: false,
          ),
          heightBox10,

          Text('Next EU inspection deadline (date)', style: titleStyle),
          CustomTextField(
            hint: 'Ex. 03-12-2025',
            isLabel: false,
          ),
          heightBox10,

          Text('Warranty type', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: ["New car warranty", "Used car warranty"],
            hintText: 'Select warranty type',
            onChanged: (value) {},
          ),
          heightBox10,

          Text('Condition report provider', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: ["NAF", "Viking"],
            hintText: 'Select Condition report provider',
            onChanged: (value) {},
          ),
          heightBox10,

          Text('Video', style: titleStyle),
          CustomTextField(
            hint: 'Ex., video link',
            isLabel: false,
          ),
          heightBox10,

          Text('Description', style: titleStyle),
          CustomTextField(
            hint: 'write here...',
            isLabel: false,
            maxLine: 4,
            vertical_padding: 8,
            height: Get.height / 8,
          ),
          heightBox10,

          Text('Re-registration fee in NOK (required)', style: titleStyle),
          CustomTextField(
            hint: 'Ex., 2500',
            isLabel: false,
          ),


          heightBox10,
          Text('Exemption from re-registration fee?', style: titleStyle,),
          heightBox5,
          Row(
            children: [
              CustomCheckboxWidget(
                  width: Get.width / 4,
                  value: false,
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
          Text('Selling price in NOK - excl. re-registration (required)', style: titleStyle),
          CustomTextField(
            hint: 'Ex., 2500',
            isLabel: false,
          ),
          heightBox10,

          Text('Total price:', style: titleStyle),
          CustomTextField(
            hint: 'Enter total price',
            isLabel: false,
          ),


          heightBox10,
          Text('Does the car have any liens/debts?', style: titleStyle,),
          heightBox5,
          Row(
            children: [
              CustomCheckboxWidget(
                  width: Get.width / 4,
                  value: false,
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
          Text('Phone number', style: titleStyle),
          CustomTextField(
            hint: 'Ex. 12345678',
            isLabel: false,
            keyboardType: TextInputType.number,
          ),
          heightBox10,

          Text('Address (Required)', style: titleStyle),
          CustomTextField(
            hint: 'EX. 47 W 13th St, New York, NY 10011, USA',
            isLabel: false,
          ),


        ],
      ),
    );
  }
}
