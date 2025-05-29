import 'package:abo_halab_app/app/data/local_database/local_storage.dart';
import 'package:abo_halab_app/app/modules/profile/views/create_store_view.dart';
import 'package:abo_halab_app/app/modules/profile/widget/profile_home_widget.dart';
import 'package:abo_halab_app/app/modules/profile/widget/profile_item_widget.dart';
import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/app_images/app_images.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_alert_dialog.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_button.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_network_image.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../resource/app_constant/cosnt_data.dart';
import '../../../resource/widgets/custom_see_more_widget.dart';
import '../controllers/profile_controller.dart';
import 'edit_profile_view.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    final StorageService storageService = StorageService();
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: CustomAppBar(
        title: 'Profile',
        backgroundColor: AppColors.mainColor,
        leading: SizedBox(),
        titleColor: Colors.white,
      ),
      body: SingleChildScrollView(

        child: ProfileHomeWidget(
          profileImage:
              'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
          child: Column(
            children: [
              CustomText(
                title: 'UserName',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              heightBox5,
              CustomText(
                title: 'abohalab@gmail.com',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              heightBox10,
              CustomButton(
                title: '',
                padding_vertical: 8,
                borderRadius: 25,
                buttonColor: AppColors.white,
                border: Border.all(color: AppColors.mainColor, width: 1),
                widget: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.editIcon, height: 20, width: 20),
                    widthBox10,
                    CustomText(
                      title: 'Edit profile',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )
                  ],
                ),
                onTap: () {
                  Get.to(()=>EditProfileView());
                },
              ),

              heightBox10,
              CustomButton(
                  title: storageService.read(createdStore) != null? 'View store' : 'Create professional store',
                  borderRadius: 25,
                  padding_vertical: 10,
                  onTap: (){
                    if(storageService.read(createdStore) != null){
                     Get.toNamed('/view-store');
                    }else{
                      print('Hello store ${storageService.read(createdStore)}');
                      Get.to(()=>CreateStoreView());
                    }
                  }
              ),

              heightBox20,
              Container(
                width: Get.width,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: Column(
                  children: [
                    ProfileItemWidget(
                      iconData: Icons.person_outline,
                      title: 'Full Name',
                      value: 'Savannah Nguyen',
                    ),

                    ProfileItemWidget(
                      iconData: Icons.phone_outlined,
                      title: 'Phone number',
                      value: '+1 123 456 7890',
                    ),

                    ProfileItemWidget(
                      iconData: Icons.email_outlined,
                      title: 'Email address',
                      value: 'savannah123@gmail.com',
                    ),

                    ProfileItemWidget(
                      iconData: Icons.calendar_month,
                      title: 'Date of birth',
                      value: '24 Jul 1998',
                    ),
                    ProfileItemWidget(
                      iconData: Icons.check_box_outline_blank,
                      title: 'Bio',
                      value: 'Lorem ipsum is a dummy or Lorem ipsum is a dummy or ',
                    ),

                  ],
                ),
              ),

              heightBox20,
              InkWell(
                onTap: () => CustomAlertDialog().showDeleteAccountDialog(context),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.delete, color: Colors.red, size: 22,),
                    CustomText(
                      title: 'Delete account',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                      decorationThickness: 1,
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
