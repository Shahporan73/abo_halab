import 'package:abo_halab_app/app/modules/sell/data_list/bobil_data_list.dart';
import 'package:abo_halab_app/app/modules/sell/widget/category_widget.dart';
import 'package:abo_halab_app/app/modules/sell/widget/select_car_type.dart';
import 'package:abo_halab_app/app/resource/app_constant/import_list.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_dotted_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';

import '../../../../resource/app_colors/App_Colors.dart';
import '../../../../resource/widgets/custom_Text_field.dart';
import '../../../../resource/widgets/custom_drop_down_widget.dart';
import '../../../profile/widget/select_multiple_image_widget.dart';

class BobilFormOne extends StatelessWidget {
  const BobilFormOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectMultipleImageWidget(),

          // Category
          CategoryWidget(),

          // Car Type
          SelectCarType(),

          // Type of Registration number
          heightBox10,
          Text('Type of Motorhome', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
              items: ["Alkove", "Bybobil", "Camper", "Delintegrert", "Integrert"],
              hintText: 'Select type of motorhome',
              onChanged: (value) {}
          ),

          // Chassis number
          heightBox10,
          Text('Registration number', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Ex., 123456789',
            isLabel: false,
          ),

          // Model year
          heightBox10,
          Text('Chassis number', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Ex., 2022',
            isLabel: false,
          ),

          // Model year
          heightBox10,
          Text('Model year', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Ex., 2022',
            isLabel: false,
            keyboardType: TextInputType.number,
          ),

          // Brand
          heightBox10,
          Text('Brand', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: bobilBrands,
            hintText: 'Select Brand',
            onChanged: (value) {},
          ),


          // Brand
          heightBox10,
          Text('Chassis type', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: ["Fiat Ducato", "Iveco Daily", "Mercedes-Benz Sprinter"],
            hintText: 'Select Brand',
            onChanged: (value) {},
          ),

          // Brand
          heightBox10,
          Text('The motorhome is parked in', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: ['Norge', 'Utlandet'],
            hintText: 'Select one',
            onChanged: (value) {},
          ),

          // Fuel
          heightBox10,
          Text('Fuel', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: ["Bensin", "Diesel", "EI", "Gass", "Gass+bensin", "Gass+diesel", "Hybrid bensin", "Hybrid diesel", "Hydrogen"],
            hintText: 'Select Fuel',
            onChanged: (value) {},
          ),

          // Fuel
          heightBox10,
          Text('Cylinder capacity in liters (required)', style: titleStyle),
          heightBox5,
          CustomTextField(hint: ' E.g.: 2400 cm³ = 2.4 l', isLabel: false),

          // Cylinder capacity in liters
          heightBox10,
          Text('Number of horsepower (required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Ex., 2.0',
            isLabel: false,
          ),

          // gearbox
          heightBox10,
          Text('Gearbox', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: ['Manual', 'Automatic'],
            hintText: 'Select one',
            onChanged: (value) {},
          ),

          // wheel driver
          heightBox10,
          Text('Wheel drive (required)', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: ["bakhjuldrift", "forhjuldrift", "firehjuldrift"],
            hintText: 'Select one',
            onChanged: (value) {},
          ),

          // Weight
          heightBox10,
          Text('Weight (required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Ex., 1500 kg',
            isLabel: false,
          ),

          // Weight
          heightBox10,
          Text('Total weight in kg (required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter total weight',
            isLabel: false,
          ),


          heightBox10,
          Text('Length in cm (required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter length',
            isLabel: false,
          ),

          heightBox10,
          Text('Width in cm', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter width',
            isLabel: false,
          ),

          heightBox10,
          Text('Number of registered seats (required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter number of seats',
            isLabel: false,
          ),

          heightBox10,
          Text('Number of sleeping places (required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter number of sleeping places',
            isLabel: false,
          ),


          // Type of bed
          heightBox10,
          Text('Type of bed', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: ["Enkelseng", "dobbeltseng", "Fransk sengløsning", "Tversgående seng"],
            hintText: 'Select one',
            onChanged: (value) {},
          ),
      
      
        ],
      ),
    );
  }
}
