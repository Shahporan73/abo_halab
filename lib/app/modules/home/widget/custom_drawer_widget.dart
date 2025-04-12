// ignore_for_file: sized_box_for_whitespace

import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/app_constant/cosnt_data.dart';
import 'package:abo_halab_app/app/resource/common_controller/validation_controller.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_switch_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    final CheckValidationController controller = Get.put(CheckValidationController());
    return Container(
      width: width / 1.5,
      child: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  height: Get.height / 7,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey.shade300,
                    backgroundImage: NetworkImage(placeholderImage),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: CustomText(
                    title: 'Abo Halab',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: CustomText(
                    title: 'abohalab@gmail.com',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Divider(
                  height: 10,
                  color: Colors.grey,
                ),
                DrawerItem(
                  icon: Icons.favorite,
                  text: 'Favorites',
                ),
                DrawerItem(
                  icon: Icons.notifications_outlined,
                  text: 'Notifications',
                ),
                DrawerItem(
                  icon: Icons.star,
                  text: 'Ratings & Reviews',
                ),

                DrawerItem(
                  icon: Icons.shopping_bag_outlined,
                  text: 'Your Product',
                ),
                DrawerItem(
                  icon: Icons.payment,
                  text: 'Payment Method',
                ),

                Divider(height: 10, color: Colors.grey),

                DrawerItem(
                  icon: Icons.info,
                  text: 'About the app',
                ),

                DrawerItem(
                  icon: Icons.support_agent,
                  text: 'Support',
                ),
                DrawerItem(
                  icon: Icons.info,
                  text: 'Terms & Conditions',
                ),

                DrawerItem(
                  icon: Icons.privacy_tip,
                  text: 'Privacy policy',
                ),

                DrawerItem(
                  icon: Icons.settings_outlined,
                  text: 'Settings',
                ),

                Divider(height: 10, color: Colors.grey),
                Container(
                  height: Get.height / 22,
                  child: Row(
                    children: [
                      Obx(() => CustomSwitchWidget(
                        value: controller.isSelectedThemeMode.value,
                        activeColor: AppColors.mainColor,
                        scale: 0.6,
                        onChanged: controller.toggleSwitchTheme,
                      ),),
                      CustomText(title: 'Dark Mode', fontSize: 12,)
                    ],
                  ),
                ),
                DrawerItem(
                  icon: Icons.logout,
                  text: 'Log In',
                  color: Colors.red,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? color;

  const DrawerItem({Key? key, required this.icon, required this.text, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height / 18,
      child: ListTile(
        leading: Icon(
          icon,
          color: color?? AppColors.mainColor,
          size: 18,
        ),
        title: CustomText(
            title: text,
            fontSize: 12,
            fontWeight: FontWeight.w600,
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
