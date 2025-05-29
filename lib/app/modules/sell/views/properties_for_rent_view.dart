import 'package:abo_halab_app/app/modules/dashboard/views/dashboard_view.dart';
import 'package:abo_halab_app/app/modules/sell/widget/category_widget.dart';
import 'package:abo_halab_app/app/modules/sell/widget/property_select_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../resource/app_colors/App_Colors.dart';
import '../../../resource/common_controller/image_picker_controller.dart';
import '../../../resource/utils/custom_size.dart';
import '../../../resource/widgets/custom_Text_field.dart';
import '../../../resource/widgets/custom_dotted_widget.dart';
import '../../../resource/widgets/custom_drop_down_widget.dart'
    show CustomDropDownWidget;
import '../../../resource/widgets/custom_text.dart';
import '../../profile/widget/select_multiple_image_widget.dart';

class PropertiesForRentView extends GetView {
  const PropertiesForRentView({super.key});
  @override
  Widget build(BuildContext context) {
    final ImagePickerController imagePickerController = Get.put(ImagePickerController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Add item'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectMultipleImageWidget(),

            // Category
            CategoryWidget(),

            // Property
            PropertySelectWidget(),


            heightBox10,
            Text(
              'Title (Required)',
              style: titleStyle,
            ),
            heightBox5,
            CustomTextField(
              hint: 'EX. 3 Bedroom House',
              isLabel: false,
            ),

            heightBox10,
            Text(
              'Address (Required)',
              style: titleStyle,
            ),
            heightBox5,
            CustomTextField(
              hint: 'EX. 47 W 13th St, New York, NY 10011, USA',
              isLabel: false,
            ),

            heightBox10,
            Text(
              'Property Type',
              style: titleStyle,
            ),
            heightBox5,
            CustomDropDownWidget(
              items: ["Detached House", "Garage", "Farm", "Apartment", "Townhouse", "Semi-Detached", "Other"],
              hintText: 'Select property type',
              onChanged: (value) {},
            ),

            // Primary rooms area
            heightBox10,
            Text('Primary rooms area (Required)', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Enter primary rooms area',
              isLabel: false,
            ),

            // Internal usable area
            heightBox10,
            Text('Internal usable area', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Enter internal usable area',
              isLabel: false,
            ),

            // External usable area
            heightBox10,
            Text('External usable area', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Enter external usable area',
              isLabel: false,
            ),

            // Terrace and balcony area
            heightBox10,
            Text('Terrace and balcony area', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Enter terrace and balcony area',
              isLabel: false,
            ),

            // Number of bedrooms
            heightBox10,
            Text('Number of bedrooms', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Enter number of bedrooms',
              isLabel: false,
            ),

            // Furnishing
            heightBox10,
            Text('Furnishing', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Enter furnishing details',
              isLabel: false,
            ),

            // Monthly rent
            heightBox10,
            Text('Monthly rent (Required)', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Enter monthly rent',
              isLabel: false,
            ),

            // Deposit
            heightBox10,
            Text('Deposit', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Enter deposit amount',
              isLabel: false,
            ),

            // Included in rent
            heightBox10,
            Text('Included in rent', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Enter details about rent inclusion',
              isLabel: false,
            ),

            // Rental period start date
            heightBox10,
            Text('Rental period start date', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Enter rental start date (DD/MM/YYYY)',
              isLabel: false,
            ),

            // Rental period end date
            heightBox10,
            Text('Rental period end date', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Enter rental end date (DD/MM/YYYY)',
              isLabel: false,
            ),

            // Property description
            heightBox10,
            Text('Property Description', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Enter property description',
              isLabel: false,
              vertical_padding: 8,
              maxLine: 4,
              height: Get.height / 8,
            ),

            // Viewing date
            heightBox10,
            Text('Viewing Date', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'EX. DD.MM.YYYY',
              isLabel: false,
            ),

            // From time
            heightBox10,
            Text('From Time', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'EX. HH:MM',
              isLabel: false,
            ),

            // To time
            heightBox10,
            Text('To Time', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'EX. HH:MM',
              isLabel: false,
            ),

            // Phone number
            heightBox10,
            Text('Phone number', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'EX. +1 234 567 890',
              isLabel: false,
            ),

            heightBox20,
            CustomButton(
              title: 'Submit',
              onTap: () {
                Get.to(()=>DashboardView());
                Get.rawSnackbar(
                  message: 'Property added successfully',
                );
              },
            ),

            heightBox20,
          ],
        ),
      ),
    );
  }
}
