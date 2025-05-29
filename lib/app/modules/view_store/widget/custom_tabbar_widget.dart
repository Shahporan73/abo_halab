import 'package:abo_halab_app/app/modules/view_store/controllers/tabbar_controller_controller.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTabBarWidget extends GetView<TabbarControllerController> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _tabButton('Item for Sale', 0),
        _tabButton('Reviews', 1),
      ],
    );
  }

  // Create tab buttons
  Widget _tabButton(String text, int index) {
    return GestureDetector(
      onTap: () => controller.changeTab(index), // Change tab index
      child: Obx(() {
        // Check if this is the selected tab
        bool isSelected = controller.selectedIndex.value == index;
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: isSelected ? Colors.purple : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.purple),
          ),
          child: CustomText(
            title: text,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.white : Colors.purple,
          ),
        );
      }),
    );
  }
}
