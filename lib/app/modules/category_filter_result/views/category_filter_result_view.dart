import 'package:abo_halab_app/app/data/category_model.dart';
import 'package:abo_halab_app/app/modules/home/widget/grid_product_card.dart';
import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_button.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../controllers/category_filter_result_controller.dart';

class CategoryFilterResultView extends GetView<CategoryFilterResultController> {
  final String? categoryName;
  final List<Product> productList;
  const CategoryFilterResultView(this.categoryName, this.productList, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: categoryName!),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          children: [
            CustomButton(
              title: '',
              buttonColor: Color(0xffEDEAF8),
              borderRadius: 0,
              widget: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    CustomText(
                      title: 'View Store Product',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.mainColor,
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.mainColor,
                    )
                  ],
                ),
              ),
              onTap: () {},
            ),

            /// result
            heightBox20,
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
                      child: Padding(padding: EdgeInsets.all(1),
                      child: GridProductCard(
                        title: data.title,
                        imgPath: data.imgPath,
                        description:data.description,
                        price: data.price,
                        totalReviews: data.totalReviews,
                        ratingCount: double.parse(data.ratingCount.toString()),
                        discountPrice: data.discountPrice,
                        discountPercentage: data.discountPercentage,
                        isLarge: isLarge,
                      ),),
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
