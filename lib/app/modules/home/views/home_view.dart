import 'package:abo_halab_app/app/modules/home/widget/carouselslider_widget.dart';
import 'package:abo_halab_app/app/modules/home/widget/story_widget.dart';
import 'package:abo_halab_app/app/modules/home/widget/custom_drawer_widget.dart';
import 'package:abo_halab_app/app/modules/home/widget/custom_row_card_widget.dart';
import 'package:abo_halab_app/app/modules/home/widget/custom_see_all_widget.dart';
import 'package:abo_halab_app/app/modules/home/widget/custom_sliver_appbar.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../widget/grid_product_card.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  final image1 = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1iRNm53_02AjU_wHBN7Koi2JQcB7U4TF-0g&s';
  final image2 = 'https://static.vecteezy.com/system/resources/previews/025/028/422/non_2x/a-big-breakfast-food-png.png';
  final image3 = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIlZLtK3VZ8XcOPfeseyPseUMeAxNB-54qYVbGjBzBHivdJkpwyVrX7NawukcImdrQzf0&usqp=CAU';
  final image4 = 'https://static.vecteezy.com/system/resources/previews/025/028/422/non_2x/a-big-breakfast-food-png.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: CustomDrawerWidget(),
      body: CustomScrollView(
        slivers: [
          CustomSliverAppbar(),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///categories widget
                  heightBox10,
                  StoryWidget(),

                  /// Slider
                  heightBox10,
                  CarouselSliderWidget(),

                  /// Top Stories
                  heightBox10,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        CustomSeeAllWidget(title: 'Top Stories', isSeeAll: true, titleValue: 'See All',),
                        heightBox5,
                        SizedBox(
                          width: double.infinity,
                          height: Get.height / 4.5,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 8,
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Get.toNamed('/product-details');
                                },
                                child: CustomRowCardWidget(),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  ///Trending Items🔥
                  heightBox10,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        CustomSeeAllWidget(title: 'Trending Items🔥', isSeeAll: true, titleValue: 'See All',),
                        heightBox5,
                        SizedBox(
                          width: double.infinity,
                          height: Get.height / 4.5,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 8,
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Get.toNamed('/product-details');
                                },
                                child: CustomRowCardWidget(),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  /// keyword boxes
                  heightBox10,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        CustomSeeAllWidget(title: 'Keyword Boxes', isSeeAll: false),
                        heightBox5,
                        MasonryGridView.builder(
                            itemCount: 4,
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            padding: EdgeInsets.zero,
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
                                ),
                              );
                            }
                        )
                      ],
                    ),
                  ),

                  /// Recently Viewed Items
                  heightBox10,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        CustomSeeAllWidget(title: 'Recently Viewed Items', isSeeAll: false),
                        heightBox5,
                        MasonryGridView.builder(
                            itemCount: 10,
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            padding: EdgeInsets.zero,
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
                                  title: 'Modern Wooden Furniture',
                                  imgPath: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6wlgMC8KfNNXMUjC9Yi23wc0HvICjPpV34Q&s',
                                  description: 'Autumn And Winter Casual cotton-padded jacket...',
                                  price: '40',
                                  totalReviews: '52555',
                                  ratingCount: 5,
                                  discountPrice: '30',
                                  discountPercentage: '20',
                                  isLarge: isLarge,
                                ),
                              );
                            }
                        )
                      ],
                    ),
                  ),
                  heightBox20,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
