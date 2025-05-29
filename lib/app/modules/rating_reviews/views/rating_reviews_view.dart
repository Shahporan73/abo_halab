import 'package:abo_halab_app/app/modules/view_store/widget/review_tab_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/rating_reviews_controller.dart';

class RatingReviewsView extends GetView<RatingReviewsController> {
  const RatingReviewsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Rating & Reviews'),
      body: ListView.builder(
        physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          itemCount: 12,
          itemBuilder: (context, index) {
            return ReviewsTab();
          }
      ),
    );
  }
}
