import 'package:abo_halab_app/app/modules/profile/widget/select_multiple_image_widget.dart';
import 'package:abo_halab_app/app/modules/sell/data_list/motorcycle_data_list.dart';
import 'package:abo_halab_app/app/modules/sell/widget/category_widget.dart';
import 'package:abo_halab_app/app/resource/app_constant/import_list.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_dotted_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';

import '../../../../resource/app_colors/App_Colors.dart';
import '../../../../resource/widgets/custom_Text_field.dart';
import '../../../../resource/widgets/custom_drop_down_widget.dart';

class MotorcycleFormOne extends StatelessWidget {
  const MotorcycleFormOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectMultipleImageWidget(),

          // Category
          CategoryWidget(),

          heightBox10,
          Text('Registration Number', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. ABC1234',
            isLabel: false,
          ),

          // Chassis/Undercarriage Number
          heightBox10,
          Text('Chassis/Undercarriage Number', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. X123456789',
            isLabel: false,
          ),

          // Select Brand
          heightBox10,
          Text('Select Brand', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: brands,
            hintText: 'Select your brand',
            onChanged: (value) {},
          ),

          // Model
          heightBox10,
          Text('Model', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. Sportster 1200',
            isLabel: false,
          ),

          // Type of Motorcycle (Required)
          heightBox10,
          Text('Type of Motorcycle (Required)', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: ["Chopper", "Cruiser", "Classic/Nakne", "Cross/Enduro/Trial", "Custom", "Lett MC",
              "Offroad/Motard", "Scooter", "Sidevogn", "Sport", "Touring", "Trike", "Veteran", "Andre"],
            hintText: 'Select your motorcycle type',
            onChanged: (value) {},
          ),

          // Model Year
          heightBox10,
          Text('Model Year', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 2022',
            isLabel: false,
          ),

          // Fuel
          heightBox10,
          Text('Fuel', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: ["Bensin", "Diesel", "Elektrisitet"],
            hintText: 'Select Fuel Type',
            onChanged: (value) {},
          ),

          // Number of Horsepower
          heightBox10,
          Text('Number of Horsepower', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 120 HP',
            keyboardType: TextInputType.number,
            isLabel: false,
          ),

          // Displacement in CCM
          heightBox10,
          Text('Displacement in CCM', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 1200cc',
            isLabel: false,
          ),

          // Weight in kg
          heightBox10,
          Text('Weight in kg', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. 180 kg',
            isLabel: false,
          ),

          // Color
          heightBox10,
          Text('Color', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'e.g. Black, Red, Blue',
            isLabel: false,
          ),
        ],
      ),
    );
  }
}
