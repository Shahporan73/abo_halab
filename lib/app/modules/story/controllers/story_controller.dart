import 'package:abo_halab_app/app/resource/app_constant/import_list.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class StoryController extends GetxController {
  late VideoPlayerController videoController;
  var isInitialized = false.obs;

  final String videoUrl =
      'https://media.istockphoto.com/id/1888618257/video/skycraper-of-corporate-buildings-with-trees.mp4?s=mp4-640x640-is&k=20&c=Bpb6QL8DajRUx4WrLHn-C4uxd5O0YfvcyJBMo_lxTe8=';

  @override
  void onInit() {
    super.onInit();
    videoController = VideoPlayerController.network(videoUrl)
      ..initialize().then((_) {
        isInitialized.value = true;
        videoController.play();
        _listenToEnd(Get.context!);
      });
  }

  void _listenToEnd(context) {
    videoController.addListener(() {
      if (videoController.value.position >= videoController.value.duration &&
          videoController.value.isInitialized) {
        if (Get.isOverlaysOpen) {
          Navigator.of(context).pop();
        }
      }
    });
  }

  @override
  void onClose() {
    videoController.dispose();
    super.onClose();
  }
}
