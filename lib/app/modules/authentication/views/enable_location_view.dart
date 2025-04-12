import 'package:abo_halab_app/app/resource/app_images/app_images.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_button.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class EnableLocationView extends GetView {
  const EnableLocationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              AppImages.enableLocation,
              height: Get.height / 3,
              width: Get.width / 2,
            ),
          ),
          CustomText(
            title: 'Location',
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          heightBox20,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomText(
                title: 'Your location services are switched off. Please'
                    'enable location, to help us serve better.',
                fontSize: 14,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: Get.height / 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomButton(
                title: 'Enable Location',
                onTap: () {
                  _requestLocationPermission(context);
                  Get.toNamed('/dashboard');
                }
            ),
          )
        ],
      ),
    );
  }
  Future<void> _requestLocationPermission(BuildContext context) async {
    final status = await Permission.location.request();
    if (status.isGranted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Location permission granted')),
      );
    } else if (status.isDenied) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Location permission denied')),
      );
    } else if (status.isPermanentlyDenied) {
      openAppSettings();
    }
  }
}
