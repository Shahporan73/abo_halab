import 'dart:io';

import 'package:abo_halab_app/app/modules/profile/widget/select_multiple_image_widget.dart';
import 'package:abo_halab_app/app/modules/sell/controllers/add_item_controller.dart';
import 'package:abo_halab_app/app/modules/sell/views/add_item_car_view.dart';
import 'package:abo_halab_app/app/modules/sell/views/add_item_caravan_view.dart';
import 'package:abo_halab_app/app/modules/sell/views/add_item_job_view.dart';
import 'package:abo_halab_app/app/modules/sell/views/add_item_motorcycle_view.dart';
import 'package:abo_halab_app/app/modules/sell/views/properties_for_rent_view.dart';
import 'package:abo_halab_app/app/modules/sell/views/properties_view.dart';
import 'package:abo_halab_app/app/modules/sell/widget/category_widget.dart';
import 'package:abo_halab_app/app/resource/common_controller/image_picker_controller.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_Text_field.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_button.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_check_box_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_dotted_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_drop_down_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../resource/app_colors/App_Colors.dart';
import '../../../resource/widgets/custom_image_picker.dart';
import '../controllers/sell_controller.dart';
import 'add_item_boat_view.dart';

class SellView extends GetView<SellController> {
  const SellView({super.key});
  @override
  Widget build(BuildContext context) {
    final AddItemController addItemController = Get.put(AddItemController());
    final ImagePickerController imagePickerController = Get.put(ImagePickerController());
    final SellController sellController = Get.put(SellController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: 'Add Item',
        leading: SizedBox(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SelectMultipleImageWidget(),


            // Category
            CategoryWidget(),


            heightBox10,
            Text(
              'Product Title',
              style: titleStyle,
            ),
            heightBox5,
            CustomTextField(
              hint: 'Enter Product Title',
              isLabel: false,
            ),
            heightBox10,
            Text(
              'Brand Name',
              style: titleStyle,
            ),
            heightBox5,
            CustomTextField(
              hint: 'Enter Brand Name',
              isLabel: false,
            ),
            heightBox10,
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Product Price',
                        style: titleStyle,
                      ),
                      heightBox5,
                      CustomTextField(
                        hint: 'Enter Price',
                        isLabel: false,
                      ),
                    ],
                  ),
                ),
                widthBox10,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Discounted Price (%)',
                        style: titleStyle,
                      ),
                      heightBox5,
                      CustomTextField(
                        hint: 'Enter discount (%)',
                        isLabel: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            heightBox10,
            Text(
              'Address',
              style: titleStyle,
            ),
            heightBox5,
            CustomTextField(
              hint: 'Enter postal code, city, street, country',
              isLabel: false,
              maxLine: 4,
              vertical_padding: 8,
              height: Get.height / 8,
            ),


            Obx(() => Visibility(
              visible: sellController.selectedCategory.value == 'Bicycle',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  heightBox10,
                  Text(
                    'Sykkel  Type',
                    style: titleStyle,
                  ),
                  heightBox5,
                  CustomDropDownWidget(
                    selectedValue: '',
                    items: [
                      "Barnesykkel", "BMX", "Bysykkel/sammenleggbare", "Cyclocross/gravel",
                      "Elektriske", "Fulldemper", "Hybrid", "Landevei", "Sparkesykkel/trehjulssykkel/lopesykkel",
                      "Terreng", "Andre"
                    ],
                    hintText: 'Select skykkel type',
                    onChanged: (value) {},
                  )
                ],
              ),
            ),),

            heightBox10,
            Obx(
              () => CustomCheckboxWidget(
                width: Get.width,
                label:'This user\'s profile details are hidden until you start a conversation.',
                value: addItemController.isChecked.value,
                onChanged: (value) {
                  addItemController.isChecked.value = value!;
                },
              ),
            ),
            heightBox20,
            CustomButton(
              title: 'Submit',
              onTap: () {},
            ),
            heightBox20,
          ],
        ),
      ),
    );
  }
}
