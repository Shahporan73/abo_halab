
import 'package:abo_halab_app/app/modules/sell/widget/category_widget.dart';
import 'package:abo_halab_app/app/modules/sell/widget/property_select_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_drop_down_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';

import '../../../../resource/app_constant/import_list.dart';
import '../../../../resource/common_controller/image_picker_controller.dart';
import '../../../../resource/utils/custom_size.dart';
import '../../../../resource/widgets/custom_Text_field.dart';
import '../../../profile/widget/select_multiple_image_widget.dart';

class PropertyFormOne extends StatelessWidget {
  const PropertyFormOne({super.key});

  @override
  Widget build(BuildContext context) {
    final ImagePickerController imagePickerController = Get.put(ImagePickerController());
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectMultipleImageWidget(),

          // Category
          CategoryWidget(),

          // Property
          PropertySelectWidget(),

          heightBox10,
          Text('Title (Required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 3 Bedroom House',
            isLabel: false,
          ),

          heightBox10,
          Text('Address (Required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 123 Main St, New York',
            isLabel: false,
          ),

          heightBox10,
          Text('Access Description', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. Easy access, 2nd floor',
            isLabel: false,
            maxLine: 4,
            vertical_padding: 8,
            height: Get.height / 8,
          ),

          heightBox10,
          Text('Location Description', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. Near the city center',
            isLabel: false,
            maxLine: 4,
            vertical_padding: 8,
            height: Get.height / 8,
          ),

          heightBox10,
          Text('Neighborhood Name', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. Manhattan',
            isLabel: false,
          ),

          heightBox10,
          Text('Property Type (Required)', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: ["Detached House", "Garage", "Farm", "Apartment", "Townhouse", "Semi-Detached", "Other"],
            hintText: 'Select property type',
          ),

          heightBox10,
          Text('Ownership Type', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: ["Stock", "Share", "Owner", "Bond", "Other"],
            hintText: 'Select ownership type',
          ),

          heightBox10,
          Text('Municipality Number', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 65',
            isLabel: false,
          ),

          heightBox10,
          Text('Municipality Number (Required)', style: titleStyle),
          CustomText(title: '(Found on local land registry)', fontSize: 10),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 65',
            isLabel: false,
          ),

          heightBox10,
          Text('Usage Number (Required)', style: titleStyle),
          CustomText(title: '(Found on land registry)', fontSize: 10),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 65',
            isLabel: false,
          ),

          heightBox10,
          Text('Section Number (Required)', style: titleStyle),
          CustomText(title: '(Assigned when sectioned)', fontSize: 10),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 65',
            isLabel: false,
          ),

          heightBox10,
          Text('Apartment Number (Required)', style: titleStyle),
          CustomText(title: '(e.g. H0201 for 2nd floor)', fontSize: 10),
          heightBox5,
          CustomTextField(
            hint: 'e.g. H0201',
            isLabel: false,
          ),
        ],
      ),
    );
  }
}
