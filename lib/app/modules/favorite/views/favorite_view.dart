import 'package:abo_halab_app/app/modules/home/widget/grid_product_card.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';

import '../controllers/favorite_controller.dart';

class FavoriteView extends GetView<FavoriteController> {
  const FavoriteView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Favorite'),
      body: MasonryGridView.builder(
        itemCount: 16,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        itemBuilder: (BuildContext context, int index) {
          bool isLarge = (index % 4 == 1 || index % 4 == 2);
          return GestureDetector(
            onTap: () {
              Get.toNamed('/product-details');
            },
            child: GridProductCard(
              title: 'Black Winter',
              imgPath: 'https://m.media-amazon.com/images/I/71HjnlfdVVL._AC_UF894,1000_QL80_.jpg',
              description: 'Autumn And Winter Casual cotton-padded jacket...',
              price: '40',
              totalReviews: '52555',
              ratingCount: 5,
              discountPrice: '30',
              discountPercentage: '20',
              isLarge: isLarge,
              isFavorite: true,
            ),
          );
        },
      ),
    );
  }
}
