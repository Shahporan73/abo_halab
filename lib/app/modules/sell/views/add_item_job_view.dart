import 'package:abo_halab_app/app/modules/sell/widget/category_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../resource/app_colors/App_Colors.dart';
import '../../../resource/utils/custom_size.dart';
import '../../../resource/widgets/custom_Text_field.dart';
import '../../../resource/widgets/custom_dotted_widget.dart';
import '../../../resource/widgets/custom_drop_down_widget.dart';
import '../../../resource/widgets/custom_text.dart';
import '../../profile/widget/select_multiple_image_widget.dart';

class AddItemJobView extends GetView {
  const AddItemJobView({super.key});
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
            Text('Headline (Required)', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Enter Headline',
              isLabel: false,
            ),

            // Job Title (Required)
            heightBox10,
            Text('Job Title (Required)', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Enter Job Title',
              isLabel: false,
            ),

            // Number of Positions (Required)
            heightBox10,
            Text('Number of Positions (Required)', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'EX. 3',
              isLabel: false,
            ),

            // Employment Type
            heightBox10,
            Text('Employment Type  (required)', style: titleStyle),
            heightBox5,
            CustomDropDownWidget(
              items: ["Temporary", "Permanent", "Apprentice", "Project", "Self-employed", "Summer/Seasonal", "Trainee", "Substitute"],
              hintText: 'Select Employment Type',
              onChanged: (value) {},
            ),

            // Sector (Required)
            heightBox10,
            Text('Sector (Choose from the following) (Required)', style: titleStyle),
            heightBox5,
            CustomDropDownWidget(
              items: ["Self-employed", "Public", "Organizations", "Private", "Cooperative"],
              hintText: 'Select Sector',
              onChanged: (value) {},
            ),

            // Industry (Required)
            heightBox10,
            Text('Industry (Required)', style: titleStyle),
            heightBox5,
            CustomDropDownWidget(
              items: ["Real Estate", "Construction", "Pharmacy", "others"],
              hintText: 'Select Industry',
              onChanged: (value) {},
            ),

            // Job Function
            heightBox10,
            Text('Job Function', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'For example: Analysis, Biologist, Fire Safety, etc.',
              isLabel: false,
            ),

            // Job Description
            heightBox10,
            Text('Job Description', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Write a detailed job description here...',
              isLabel: false,
              maxLine: 4,
              vertical_padding: 8,
              height: Get.height / 8,
            ),

            // Keywords
            heightBox10,
            Text('Keywords', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'For example: Analysis, Biologist, Fire Safety, etc.',
              isLabel: false,
            ),

            // Working Language
            heightBox10,
            Text('Working Language', style: titleStyle),
            heightBox5,
            CustomDropDownWidget(
              items: ["Norwegian", "English"],
              hintText: 'Select Working Language',
              onChanged: (value) {},
            ),

            // Salary Description
            heightBox10,
            Text('Salary Description', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'EX. Competitive salary based on experience',
              isLabel: false,
              maxLine: 4,
              vertical_padding: 8,
              height: Get.height / 8,
            ),

            // Additional Information
            heightBox10,
            Text('Additional Information', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Write any additional information here...',
              isLabel: false,
              maxLine: 4,
              vertical_padding: 8,
              height: Get.height / 8,
            ),

            // Company Information
            heightBox10,
            Text('Company Information', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'Write information about your company here...',
              isLabel: false,
              maxLine: 4,
              vertical_padding: 8,
              height: Get.height / 8,
            ),


            heightBox10,
            Text('Website', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'website link here',
              isLabel: false,
            ),

            heightBox10,
            Text('Employer on LinkedIn ', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'linkedin link here',
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

            // Contact Person
            heightBox10,
            Text('Contact Person', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'name of the contact person',
              isLabel: false,
            ),

            // Contact Person's Job Title
            heightBox10,
            Text('Contact Person\'s Job Title', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'e.g., Managing Director',
              isLabel: false,
            ),

            // Contact Person's Phone Number
            heightBox10,
            Text('Contact Person\'s Phone Number', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'EX. 123456789',
              isLabel: false,
            ),

            // Contact Person\'s Email
            heightBox10,
            Text('Contact Person\'s Email', style: titleStyle),
            heightBox5,
            CustomTextField(
              hint: 'EX. abc@gmail.com',
              isLabel: false,
            ),

            heightBox20,
            CustomButton(title: 'Submit', onTap: (){}),
            heightBox10,
          ],
        ),
      ),
    );
  }
}
