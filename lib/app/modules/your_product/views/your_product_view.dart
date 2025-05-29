import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/your_product_controller.dart';
import '../widget/your_product_card.dart';

class YourProductView extends GetView<YourProductController> {
  const YourProductView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Your Product'),
      body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 16),
          shrinkWrap: true,
          itemCount: 8,
          physics: AlwaysScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return YourProductCard();
          },
      ),
    );
  }
}
