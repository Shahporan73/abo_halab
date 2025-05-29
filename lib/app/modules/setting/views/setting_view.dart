import 'package:abo_halab_app/app/modules/setting/views/change_password_view.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_switch_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Settings'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [

            ListTile(
              leading: Icon(Icons.notifications_none, size: 24,),
              title: CustomText(
                  title: 'Notification',
                fontSize: 16,
              ),
              trailing: SizedBox(
                width: 50,
                child: CustomSwitchWidget(
                  value: false,
                  scale: 0.7,
                  onChanged: (value) {

                  },
                ),
              ),
            ),
            Divider(height: 5,),

            ListTile(
              leading: Icon(Icons.settings_outlined, size: 24,),
              title: CustomText(
                title: 'Changes Password',
                fontSize: 16,
              ),
              trailing: Icon(Icons.arrow_forward_ios, size: 22,),
              onTap: () {
                Get.to(()=>ChangePasswordView());
              },
            ),
            Divider(height: 5,)

          ],
        ),
      ),
    );
  }
}
