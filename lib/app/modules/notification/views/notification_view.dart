import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(title: 'Notification'),
      body: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              // color: Colors.green,
              width: Get.width / 5,
              child: Row(
                children: [
                  CircleAvatar(radius: 5, backgroundColor: AppColors.mainColor,),
                  widthBox5,
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xffE8EFFD),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.notifications_outlined,
                      color: AppColors.black,
                    ),
                  )
                ],
              ),
            ),
            title: CustomText(
              title: 'Welcome, Your account has been created successfully.',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.black,
            ),
            subtitle: CustomText(
              title: '1 day ago',
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: AppColors.black,
            ),
          );
        },
      ),
    );
  }
}
