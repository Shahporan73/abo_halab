import 'package:abo_halab_app/app/modules/home/widget/search_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_Text_field.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';

import '../../../resource/utils/custom_size.dart';
import '../controllers/search_controller.dart';
import '../widget/grid_product_card.dart';

class SearchView extends GetView {
  const SearchView({super.key});
  @override
  Widget build(BuildContext context) {
    final SearchDataController searchController = Get.put(SearchDataController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Search'),
      body: Obx(
            () => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Column(
            children: [

              CustomTextField(
                  hint: 'Search',
                  isLabel: false,
                  onChanged: searchController.filterSearch,
                  controller: searchController.searchController,
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 18,
                  ),
                  suffixIcon: searchController.searchController.text.isNotEmpty ? InkWell(
                    onTap: () {
                      searchController.searchController.clear();
                      searchController.filteredSuggestions.value = allSuggestions;
                    },
                    child: const Icon(
                      Icons.close,
                      color: Colors.black,
                      size: 18,
                    ),
                  ):null
              ),

              heightBox20,
              Expanded(
                child: searchController.filteredSuggestions.isEmpty && searchController.searchController.text.isEmpty
                    ? SizedBox():
                searchController.searchController.text.isNotEmpty
                    ? ListView.builder(
                  itemCount: searchController.filteredSuggestions.length,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (context, index) {
                    final suggestion = searchController.filteredSuggestions[index];
                    return SearchWidget(
                        suggestion: suggestion,
                        onItemTap: (){
                          print(suggestion);
                          Get.rawSnackbar(
                            message: suggestion,
                            duration: const Duration(seconds: 1),
                          );
                        },
                    );
                  },
                ):
                MasonryGridView.builder(
                    itemCount:15,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    padding: EdgeInsets.all(1),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
