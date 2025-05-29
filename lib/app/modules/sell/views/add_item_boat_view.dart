import 'package:abo_halab_app/app/modules/sell/data_list/boat_data_list.dart';
import 'package:abo_halab_app/app/modules/sell/widget/category_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../resource/app_colors/App_Colors.dart';
import '../../../resource/utils/custom_size.dart';
import '../../../resource/widgets/custom_Text_field.dart';
import '../../../resource/widgets/custom_button.dart';
import '../../../resource/widgets/custom_check_box_widget.dart';
import '../../../resource/widgets/custom_dotted_widget.dart';
import '../../../resource/widgets/custom_drop_down_widget.dart';
import '../../../resource/widgets/custom_text.dart';
import '../../dashboard/views/dashboard_view.dart';
import '../../profile/widget/select_multiple_image_widget.dart';

class AddItemBoatView extends GetView {
  const AddItemBoatView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Add Item'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectMultipleImageWidget(),

            // Category
            CategoryWidget(),


            heightBox10,
            Text('Type of boat (required)', style: titleStyle),
            heightBox5,
            CustomDropDownWidget(
                items: ["Bowrider", "Cabincruiser", "Daycruiser", "Gummibåt/Jolle", "Pilothouse", "RIB", "Seilbåt/Motorseiler",
                  "Skjærgårdsjeep/Landstedsbåt", "Speedbåt", "Trebåt/Snekke", "Vannscooter", "Yacht", "Yrkesbåt/Sjark/Skeyte", "Andre"
                ],
                hintText: 'Select type of boat',
                onChanged: (value) {}
            ),

            // Registration Number
            heightBox10,
            Text('Registration Number', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Enter registration number',
              isLabel: false,
            ),

            // Model Year (required)
            heightBox10,
            Text('Model year (required)', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'EX. 2022',
              isLabel: false,
            ),

            // Select Brand
            heightBox10,
            Text('Select Brand', style: titleStyle),
            heightBox5,
            CustomDropDownWidget(
              items: boatBrands,
              hintText: 'Select your brand',
              onChanged: (value) {},
            ),

            // Boat is located in
            heightBox10,
            Text('Boat is located in', style: titleStyle),
            heightBox5,
            CustomDropDownWidget(
              items: ['Norge', 'Utlandet'],
              hintText: 'Select your location',
              onChanged: (value) {},
            ),

            // Is the motor included in the sale?
            heightBox10,
            Text('Is the motor included in the sale?', style: titleStyle),
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

            // Engine brand
            heightBox10,
            Text('Engine brand', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Enter engine brand',
              isLabel: false,
            ),

            // Engine type
            heightBox10,
            Text('Engine type', style: titleStyle),
            heightBox5,
            CustomDropDownWidget(
              items: ["Innenbords", "Utenbords", "Andre"],
              hintText: 'Select engine type',
              onChanged: (value) {},
            ),

            // Horsepower
            heightBox10,
            Text('Horsepower', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Enter horsepower',
              isLabel: false,
            ),

            // Fuel
            heightBox10,
            Text('Fuel', style: titleStyle),
            heightBox5,
            CustomDropDownWidget(
              items: ["Bensin", "Diesel", "Elektrisitet", "Hybrid", "Andre"],
              hintText: 'Select Fuel',
              onChanged: (value) {},
            ),

            // Length in feet (required)
            heightBox10,
            Text('Length in feet (required)', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Enter length in feet',
              isLabel: false,
            ),

            // Depth in cm
            heightBox10,
            Text('Depth in cm', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Enter depth in cm',
              isLabel: false,
            ),

            // Weight in kg
            heightBox10,
            Text('Weight in kg', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Enter weight in kg',
              isLabel: false,
            ),

            // Boat construction material
            heightBox10,
            Text('Boat construction material', style: titleStyle),
            heightBox5,
            CustomDropDownWidget(
              items: ["Aluminium", "Glassfiber", "Plast", "Tre", "Andre"],
              hintText: 'Select material',
              onChanged: (value) {},
            ),


            heightBox10,
            Text('Color', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'EX. Red, White, Blue',
              isLabel: false,
            ),

            // Number of seats
            heightBox10,
            Text('Number of seats', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'EX. 4',
              isLabel: false,
            ),

            // LYS number
            heightBox10,
            Text('LYS number', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'EX. 12345',
              isLabel: false,
            ),

            // Equipment
            heightBox10,
            Text('Equipment', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Write any additional equipment here...',
              isLabel: false,
            ),

            // Ad headline (required)
            heightBox10,
            Text('Ad headline (required)', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Write a catchy headline for your ad',
              isLabel: false,
            ),

            // Video
            heightBox10,
            Text('Video', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'EX. video link or YouTube URL',
              isLabel: false,
            ),

            // Description
            heightBox10,
            Text('Description', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Write a detailed description of the boat...',
              isLabel: false,
              maxLine: 4,
              vertical_padding: 8,
              height: Get.height / 8,
            ),

            // Selling price in NOK OR Makspris (if boat for rent) (required)
            heightBox10,
            Text('Selling price in NOK OR Makspris (if boat for rent) (required)', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'EX. 50000 NOK',
              isLabel: false,
            ),

            // Phone number
            heightBox10,
            Text('Phone number', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'EX. 12345678',
              isLabel: false,
            ),

            // Address (Required)
            heightBox10,
            Text('Address (Required)', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'EX. 47 W 13th St, New York, NY 10011, USA',
              isLabel: false,
            ),


            heightBox20,
            CustomButton(
                title: 'Submit',
                onTap: (){
                  Get.offAll(() => DashboardView());
                },
            ),
            heightBox10,

          ],
        ),
      ),
    );
  }
}
