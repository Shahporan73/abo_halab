import 'package:abo_halab_app/app/modules/home/widget/filter/filter_sheet_widget.dart';
import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_Text_field.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliverAppbar extends StatelessWidget {
  const CustomSliverAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: Get.height / 7,
      backgroundColor: AppColors.mainColor,
      pinned: true,
      floating: true, // Search bar hides on scroll
      snap: false,
      automaticallyImplyLeading: false,

      title: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Builder(
            builder: (context) {
              return GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Icon(Icons.menu, color: Colors.white),
              );
            },
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                title: 'Hello!',
                fontSize: 12,
                color: AppColors.white,
              ),
              Row(
                children: [
                  CustomText(
                    title: 'Md. Ziaul Haque',
                    fontSize: 14,
                    color: AppColors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          GestureDetector(
              onTap: () {
                Get.toNamed('/notification');
              },
              child: const Icon(CupertinoIcons.bell_fill, color: Colors.white)),
        ],
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          alignment: Alignment.bottomLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      height: Get.height / 18,
                      hint: 'Search items. . . ',
                      // hintColor: Colors.black,
                      isLabel: false,
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 18,
                      ),
                      //  suffixIcon: const Icon(Icons.mic, color: AppColors.mainColor, size: 18,),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: GestureDetector(
                      child: const Icon(Icons.tune, color: AppColors.mainColor),
                      onTap: () {
                        showFilterBottomSheet(context);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
