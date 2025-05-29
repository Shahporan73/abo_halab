import 'package:get/get.dart';

import '../controllers/rating_reviews_controller.dart';

class RatingReviewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RatingReviewsController>(
      () => RatingReviewsController(),
    );
  }
}
