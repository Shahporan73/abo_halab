import 'package:abo_halab_app/app/data/category_model.dart';
import 'package:abo_halab_app/app/data/data_list.dart';
import 'package:abo_halab_app/app/modules/categories/model/data_list.dart';
import 'package:abo_halab_app/app/modules/categories/widget/Categories_widget.dart';
import 'package:abo_halab_app/app/modules/category_filter_result/views/category_filter_result_view.dart';
import 'package:abo_halab_app/app/modules/home/widget/custom_see_all_widget.dart';
import 'package:abo_halab_app/app/modules/home/widget/filter/filter_sheet_widget.dart';
import 'package:abo_halab_app/app/modules/home/widget/grid_product_card.dart';
import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_Text_field.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../../home/views/search_view.dart';
import '../../home/widget/story_widget.dart';
import '../controllers/categories_controller.dart';

class CategoriesView extends GetView<CategoriesController> {
  CategoriesView({super.key});

  // Map to link categories to their respective lists
  Map<String, List<Product>> categoryProductsMap = {
    'Electrical': electronicsProductList,
    'Properties': propertiesList,
    'Cars': carsList,
    'Motorcycles': motorcycleList,
    'Furniture': furnitureList,
    'Mobile Phones': mobilePhoneList,
  };

  @override
  Widget build(BuildContext context) {
    final CategoriesController controller = Get.put(CategoriesController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: 'Marketplace',
        leading: SizedBox(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
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
                    readOnly: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 18,
                    ),
                    onTap: () {
                      Get.to(()=> SearchView(), transition: Transition.downToUp);
                    },
                  ),
                ),






                const SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: GestureDetector(
                    child: const Icon(Icons.tune, color: AppColors.white),
                    onTap: () {
                      showFilterBottomSheet(context);
                    },
                  ),
                ),
              ],
            ),

            ///Categories
            heightBox10,
            CustomSeeAllWidget(title: 'Categories', isSeeAll: false),
            heightBox5,
            SizedBox(
              height: Get.height / 6,
              child: ListView.builder(
                itemCount: categories.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      String categoryTitle = categories[index].title;
                      List<Product> selectedCategoryProducts =categoryProductsMap[categoryTitle] ?? [];
                      Get.to(
                        () => CategoryFilterResultView(
                            categories[index].title, selectedCategoryProducts),
                        transition: Transition.downToUp,
                      );
                    },
                    child: CategoriesWidget(
                      catImage: categories[index].imageUrl,
                      catName: categories[index].title,
                    ),
                  );
                },
              ),
            ),

            ///Relevant items
            CustomSeeAllWidget(title: 'Relevant Items', isSeeAll: false),
            heightBox5,
            MasonryGridView.builder(
              itemCount: 12,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              padding: EdgeInsets.zero,
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
              ),
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
              },
            ),

            heightBox20,
          ],
        ),
      ),
    );
  }
}
