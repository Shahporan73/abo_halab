import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: CustomAppBar(
        title: 'Profile',
        backgroundColor: AppColors.mainColor,
        leading: SizedBox(),
        titleColor: Colors.white,
      ),
      body: Stack(
        children: [
          ClipOval(
            child: CustomNetworkImage(
              imageUrl: 'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              height: Get.height / 6,
              width: Get.width / 3,
            ),
          ),
        ],
      ),
    );
  }
}
