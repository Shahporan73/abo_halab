import 'package:abo_halab_app/app/resource/widgets/custom_dotted_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';

import '../../../../resource/app_constant/import_list.dart';
import '../../../../resource/common_controller/image_picker_controller.dart';
import '../../../../resource/utils/custom_size.dart';
import '../../../../resource/widgets/custom_Text_field.dart';

class PropertiesFormThree extends StatelessWidget {
  const PropertiesFormThree({super.key});

  @override
  Widget build(BuildContext context) {
    final ImagePickerController imagePickerController = Get.put(ImagePickerController());
    return SingleChildScrollView(
      child: Obx(() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Plot Size
          Text('Plot Size', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter Plot Size (in m²)',
            isLabel: false,
          ),

          heightBox10,
          Text('Lease Term', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter Lease Term (in years)',
            isLabel: false,
          ),

          heightBox10,
          Text('Lease Fee', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter Lease Fee',
            isLabel: false,
          ),

          heightBox10,
          Text('Plot Characteristics', style: titleStyle),
          CustomText(title: '(Describe landscaping, driveway, parking, etc.)', fontSize: 10),
          heightBox5,
          CustomTextField(
            hint: 'Enter Plot Characteristics',
            isLabel: false,
          ),

          heightBox10,
          Text('Shared Costs (Required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter Shared Costs',
            isLabel: false,
          ),

          // Shared Costs After Interest-Free Period
          heightBox10,
          Text('Shared Costs After Interest-Free Period', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter Shared Costs After Interest-Free Period',
            isLabel: false,
          ),

          // Shared Costs Include
          heightBox10,
          Text('Shared Costs Include (Required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter Shared Costs Include',
            isLabel: false,
          ),

          // Property Tax Value
          heightBox10,
          Text('Property Tax Value (Required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter Property Tax Value',
            isLabel: false,
          ),

          // Listing Price
          heightBox10,
          Text('Listing Price (Required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter Listing Price',
            isLabel: false,
          ),

          // Additional Costs
          heightBox10,
          Text('Additional Costs (Required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter Additional Costs',
            isLabel: false,
          ),

          // Additional Costs Include
          heightBox10,
          Text('Additional Costs Include (Required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter Additional Costs Include',
            isLabel: false,
          ),

          // Shared Debt
          heightBox10,
          Text('Shared Debt (Required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter Shared Debt',
            isLabel: false,
          ),

          // Total Price
          heightBox10,
          Text('Total Price', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter Total Price',
            isLabel: false,
          ),

          // Appraisal Value
          heightBox10,
          Text('Appraisal Value', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter Appraisal Value',
            isLabel: false,
          ),

          // Loan Value
          heightBox10,
          Text('Loan Value', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter Loan Value',
            isLabel: false,
          ),

          // Shared Equity
          heightBox10,
          Text('Shared Equity', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter Shared Equity',
            isLabel: false,
          ),

          // Annual Municipal Fees
          heightBox10,
          Text('Annual Municipal Fees', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter Annual Municipal Fees',
            isLabel: false,
          ),

          // Annual Property Tax
          heightBox10,
          Text('Annual Property Tax', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter Annual Property Tax',
            isLabel: false,
          ),

          // Additional Information on Shared Debt & Costs
          heightBox10,
          Text('Additional Information on Shared Debt & Costs', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter Additional Information',
            isLabel: false,
          ),

          // Right of First Refusal
          heightBox10,
          Text('Right of First Refusal', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter Right of First Refusal',
            isLabel: false,
          ),

          // Property Description
          heightBox10,
          Text('Property Description', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter Property Description',
            isLabel: false,
            maxLine: 4,
            vertical_padding: 8,
            height: Get.height / 8,
          ),

          heightBox10,
          Text('Video Link', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Embed a YouTube video link',
            isLabel: false,
          ),

          heightBox10,
          Text('360° Virtual Tour Link', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Enter 360° Virtual Tour Link',
            isLabel: false,
          ),

          heightBox10,
          Text('Attach File (PDF)', style: titleStyle),
          heightBox5,
          CustomDottedWidget(
            title: 'Select a file to drop it here',
            iconData: Icons.cloud_download_outlined,
            containerHeight: Get.height / 6,
            onTap: () {
              print(imagePickerController.fileName.value);
              imagePickerController.pickPDF();
            },
          ),
          if (imagePickerController.fileName.value != '') ...[
            heightBox5,
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.picture_as_pdf, color: Colors.red, size: 24),
              title: CustomText(title: imagePickerController.fileName.value, fontSize: 14),
              trailing: IconButton(
                icon: Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  imagePickerController.fileName.value = '';
                },
              ),
            ),
          ],

          // Viewing Date
          SizedBox(height: 10),
          Text('Viewing Date', style: titleStyle),
          SizedBox(height: 5),
          CustomTextField(
            hint: 'EX. DD.MM.YYYY',
            isLabel: false,
          ),

          // From Time
          SizedBox(height: 10),
          Text('From Time', style: titleStyle),
          SizedBox(height: 5),
          CustomTextField(
            hint: 'EX. HH:MM',
            isLabel: false,
          ),

          // To Time
          SizedBox(height: 10),
          Text('To Time', style: titleStyle),
          SizedBox(height: 5),
          CustomTextField(
            hint: 'EX. HH:MM',
            isLabel: false,
          ),

          // Phone Number
          SizedBox(height: 10),
          Text('Phone Number', style: titleStyle),
          SizedBox(height: 5),
          CustomTextField(
            hint: 'EX. 0123456789',
            isLabel: false,
            keyboardType: TextInputType.number,
          ),
        ],
      )),
    );
  }
}
