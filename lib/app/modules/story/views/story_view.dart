import 'package:abo_halab_app/app/resource/app_constant/cosnt_data.dart';
import 'package:abo_halab_app/app/resource/app_images/app_images.dart';
import 'package:abo_halab_app/app/resource/utils/launch_url_method.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../controllers/story_controller.dart';

class StoryView extends GetView<StoryController> {
  const StoryView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(StoryController());
    return Scaffold(
      backgroundColor: Colors.black,
      body: Obx(() {
        if (!controller.isInitialized.value) {
          return const Center(child: CircularProgressIndicator());
        }

        return Stack(
          children: [
            SizedBox.expand(
              child: FittedBox(
                fit: BoxFit.cover,
                child: GestureDetector(
                  // onTap: () => Navigator.of(context).pop(),
                  child: SizedBox(
                    width: controller.videoController.value.size.width,
                    height: controller.videoController.value.size.height,
                    child: VideoPlayer(controller.videoController),
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 30,
              left: 20,
              right: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(placeholderImage),
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                              title: "Istick Ahmed",
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                          SizedBox(width: 6),
                          CustomText(title: 'Owner', color: Colors.white,),
                        ],
                      ),
                      Spacer(),
                     InkWell(
                       onTap: () {
                         print(controller.videoUrl);
                         LaunchUrlMethod().shareAnything(controller.videoUrl);
                       },
                       child: Image.asset(AppImages.shareIcon, height: 25, width: 25, color: Colors.white,),
                     )
                    ],
                  ),
                  const SizedBox(height: 8),
                  CustomText(
                   title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit...",
                    color: Colors.white,
                  ),
                ],
              ),
            )
          ],
        );
      }),
    );
  }
}
