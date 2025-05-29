// ignore_for_file: sized_box_for_whitespace

import 'package:abo_halab_app/app/modules/authentication/views/sign_in_view.dart';
import 'package:abo_halab_app/app/modules/payment_method/views/payment_method_view.dart';
import 'package:abo_halab_app/app/modules/setting/views/about_the_app_view.dart';
import 'package:abo_halab_app/app/modules/setting/views/privacy_policy_view.dart';
import 'package:abo_halab_app/app/modules/setting/views/setting_view.dart';
import 'package:abo_halab_app/app/modules/setting/views/support_view.dart';
import 'package:abo_halab_app/app/modules/setting/views/terms_condition_view.dart';
import 'package:abo_halab_app/app/modules/your_product/views/your_product_view.dart';
import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/app_constant/cosnt_data.dart';
import 'package:abo_halab_app/app/resource/common_controller/validation_controller.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_alert_dialog.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_switch_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/local_database/local_storage.dart';
import 'drawer_item_widget.dart';

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
                  onTap: () {
                    Navigator.pop(context);
                    Get.toNamed('/favorite');
                  },
                ),
                DrawerItem(
                  icon: Icons.notifications_outlined,
                  text: 'Notifications',
                  onTap: () {
                    Navigator.pop(context);
                    Get.toNamed('/notification');
                  },
                ),
                DrawerItem(
                  icon: Icons.star,
                  text: 'Ratings & Reviews',
                  onTap: () {
                    Navigator.pop(context);
                    Get.toNamed('/rating-reviews');
                  },
                ),

                DrawerItem(
                  icon: Icons.shopping_bag_outlined,
                  text: 'Your Product',
                  onTap: () {
                    Navigator.pop(context);
                    Get.to(()=>YourProductView());
                  },
                ),
                DrawerItem(
                  icon: Icons.payment,
                  text: 'Payment Method',
                  onTap: () {
                    Navigator.pop(context);
                    Get.to(()=>PaymentMethodView());
                  },
                ),

                Divider(height: 10, color: Colors.grey),

                DrawerItem(
                  icon: Icons.info,
                  text: 'About the app',
                  onTap: () {
                    Navigator.pop(context);
                    Get.to(()=>AboutTheAppView());
                  },
                ),

                DrawerItem(
                  icon: Icons.support_agent,
                  text: 'Support',
                  onTap: () {
                    Navigator.pop(context);
                    Get.to(()=>SupportView());
                  },
                ),
                DrawerItem(
                  icon: Icons.info,
                  text: 'Terms & Conditions',
                  onTap: () {
                    Navigator.pop(context);
                    Get.to(()=>TermsConditionView());
                  },
                ),

                DrawerItem(
                  icon: Icons.privacy_tip,
                  text: 'Privacy policy',
                  onTap: () {
                    Navigator.pop(context);
                    Get.to(()=>PrivacyPolicyView());
                  },
                ),

                DrawerItem(
                  icon: Icons.settings_outlined,
                  text: 'Settings',
                  onTap: () {
                    Navigator.pop(context);
                    Get.to(()=>SettingView());
                  },
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
                  onTap: () {
                    Navigator.pop(context);
                    CustomAlertDialog().customAlert(
                        context: context,
                        title: 'Logout',
                        message: 'Are you sure you want to logout?',
                        NegativebuttonText: 'Cancel',
                        PositivvebuttonText: 'Logout',
                        onPositiveButtonPressed: () {
                          Navigator.of(context).pop();
                          // final StorageService localData = StorageService();
                          // localData.clear();
                          Get.offAll(
                              ()=>SignInView(),
                          );
                        },
                    );
                  },
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

