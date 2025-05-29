import 'package:abo_halab_app/app/data/category_model.dart';
import 'package:abo_halab_app/app/modules/category_filter_result/views/today_best_item_categories.dart';
import 'package:abo_halab_app/app/modules/home/widget/grid_product_card.dart';
import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_button.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../../../resource/widgets/custom_Text_field.dart';
import '../../home/widget/story_widget.dart';
import '../controllers/category_filter_result_controller.dart';
import '../widget/keyword_sliders_widget.dart';

class CategoryFilterResultView extends GetView<CategoryFilterResultController> {
  final String? categoryName;
  final List<Product> productList;
  const CategoryFilterResultView(this.categoryName, this.productList,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: categoryName!),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              height: Get.height / 18,
              hint: 'Search items. . . ',
              // hintColor: Colors.black,
              isLabel: false,
              filled: true,
              fillColor: Colors.white,
              readOnly: true,
              prefixIcon: const Icon(
                Icons.search,
                size: 18,
              ),
              onTap: () {},
            ),
            heightBox10,
            KeywordSlider(
              keywords: ['Fan', 'AC', 'Bike', 'Clothes', 'Drinks', 'Steak', 'Sushi'],
            ),


            /// result
            heightBox20,

            CustomText(
              title: "Story of Categories",
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            heightBox5,
            StoryWidget(),

            heightBox20,
            CustomText(
              title: "Today Best Sell 🔥",
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            heightBox5,
            TodayItemCategoryBestProduct(
              products: [
                {
                  'image':
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_rh2tOtESCkQmtHSoqWpyQr7OCF3KJv5ATA&s',
                  'name': 'Brand New',
                },
                {
                  'image':
                      'https://dqvd9g622ecnq.cloudfront.net/media/webp_image/catalog/product/cache/740696d8dc5da3e55e0d9f1769f31d60/9/5/959600000788-2.webp',
                  'name': 'Brand New',
                },
                {
                  'image':
                      'https://dqvd9g622ecnq.cloudfront.net/media/webp_image/catalog/product/cache/740696d8dc5da3e55e0d9f1769f31d60/9/5/959600000788-2.webp',
                  'name': 'Bike Parts',
                },
              ],
            ),
            heightBox10,
            CustomText(
              title: "Categories Product",
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            heightBox10,
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: MasonryGridView.builder(
                  itemCount: productList.length,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  itemBuilder: (BuildContext context, int index) {
                    bool isLarge = (index % 4 == 1 || index % 4 == 2);
                    var data = productList[index];
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed('/product-details');
                      },
                      child: Padding(
                        padding: EdgeInsets.all(1),
                        child: GridProductCard(
                          title: data.title,
                          imgPath: data.imgPath,
                          description: data.description,
                          price: data.price,
                          totalReviews: data.totalReviews,
                          ratingCount:
                              double.parse(data.ratingCount.toString()),
                          discountPrice: data.discountPrice,
                          discountPercentage: data.discountPercentage,
                          isLarge: isLarge,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            heightBox20,
          ],
        ),
      ),
    );
  }
}
