import 'package:abo_halab_app/app/modules/sell/controllers/add_properties_controller.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_check_box_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_drop_down_widget.dart';

import '../../../../resource/app_constant/import_list.dart';
import '../../../../resource/utils/custom_size.dart';
import '../../../../resource/widgets/custom_Text_field.dart';
import '../../../../resource/widgets/custom_text.dart';

class PropertiesFormTwo extends StatelessWidget {
  const PropertiesFormTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final AddPropertiesController controller = Get.put(AddPropertiesController());
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text('Usage Number (Required)', style: titleStyle),
          CustomText(title: '(Gross area minus space occupied by external walls)', fontSize: 10),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 65',
            isLabel: false,
          ),

          heightBox10,
          Text('Internal Usable Area', style: titleStyle),
          CustomText(title: '(Area inside the unit)', fontSize: 10),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 65',
            isLabel: false,
          ),

          heightBox10,
          Text('External Usable Area', style: titleStyle),
          CustomText(title: '(Area outside the unit, e.g. storage)', fontSize: 10),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 65',
            isLabel: false,
          ),

          heightBox10,
          Text('Terrace/Balcony Area', style: titleStyle),
          CustomText(title: '(Area of outdoor spaces)', fontSize: 10),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 65',
            isLabel: false,
          ),

          heightBox10,
          Text('Primary Rooms Area', style: titleStyle),
          CustomText(title: '(Excludes secondary rooms)', fontSize: 10),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 65',
            isLabel: false,
          ),

          heightBox10,
          Text('Ground Area', style: titleStyle),
          CustomText(title: '(Building footprint)', fontSize: 10),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 65',
            isLabel: false,
          ),

          heightBox10,
          Text('Area Description', style: titleStyle),
          CustomText(title: '(Overview of room sizes)', fontSize: 10),
          heightBox5,
          CustomTextField(
            hint: 'Describe room areas',
            isLabel: false,
            vertical_padding: 8,
            maxLine: 4,
            height: Get.height / 8,
          ),

          heightBox10,
          Text('Year Built (Required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 2025',
            isLabel: false,
          ),

          heightBox10,
          Text('Year Renovated', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 2025',
            isLabel: false,
          ),

          heightBox10,
          Text('Energy Rating', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
              items: ["A", "B", "C", "D", "E", "F", "G"],
              hintText: 'Select energy rating'
          ),

          heightBox10,
          Text('Heating Rating', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
              items: ["Yellow", "Light Green", "Dark Green", "Orange", "Red"],
              hintText: 'Select heating rating'
          ),

          heightBox10,
          Text('Number of Bedrooms (Required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 4',
            isLabel: false,
          ),

          heightBox10,
          Text('Total Number of Rooms', style: titleStyle),
          CustomText(title: '(Excludes storage/garages)', fontSize: 10),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 8',
            isLabel: false,
          ),

          heightBox10,
          Text('Floor Level', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 4',
            isLabel: false,
          ),

          heightBox10,
          Text('Facilities', style: titleStyle),
          heightBox5,
          Obx(() {
            return Wrap(
              spacing: 16.0,
              runSpacing: 8.0,
              children: List.generate(controller.labels.length, (index) {
                return CustomCheckboxWidget(
                  fontSize: 13,
                  value: controller.checkboxStates[index],
                  onChanged: (bool? newValue) {
                    controller.checkboxStates[index] = newValue ?? false;
                  },
                  label: controller.labels[index],
                );
              }),
            );
          }),
        ],
      ),
    );
  }
}
