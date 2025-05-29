import 'package:abo_halab_app/app/modules/payment_method/widget/boost_card.dart';
import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_button.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/payment_method_controller.dart';

class PaymentMethodView extends GetView<PaymentMethodController> {
  const PaymentMethodView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Boosted'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
                title: 'Boosted Visibility',
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black),
            heightBox10,
            Row(
              children: [
                Icon(
                  Icons.check_box,
                  color: AppColors.mainColor,
                  size: 18,
                ),
                widthBox8,
                CustomText(
                  title: 'Get special notification',
                  fontSize: 14,
                  color: Colors.black,
                ),
              ],
            ),
            heightBox5,
            Row(
              children: [
                Icon(
                  Icons.check_box,
                  color: AppColors.mainColor,
                  size: 18,
                ),
                widthBox8,
                CustomText(
                  title: 'Get 150 users see',
                  fontSize: 14,
                  color: Colors.black,
                ),
              ],
            ),
            heightBox20,
            GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              shrinkWrap: true,
              children: [
                BoostCard(
                  perDay: 'Per day',
                  price: '\$1.00',
                  selectedBoost: 'Per day',
                ),
                BoostCard(
                  perDay: '3 days',
                  price: '\$8.00',
                  selectedBoost: '3 days',
                ),
                BoostCard(
                  perDay: 'Per Month',
                  price: '\$50',
                  selectedBoost: 'Per Month',
                ),
                BoostCard(
                  perDay: 'Per Year',
                  price: '\$100',
                  selectedBoost: 'Per Year',
                ),
              ],
            ),
            heightBox20,
            CustomButton(
              title: 'Continue',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
