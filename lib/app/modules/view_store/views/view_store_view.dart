import 'package:abo_halab_app/app/modules/home/widget/grid_product_card.dart';
import 'package:abo_halab_app/app/modules/view_store/widget/image_logo_widget.dart';
import 'package:abo_halab_app/app/modules/view_store/widget/review_tab_widget.dart';
import 'package:abo_halab_app/app/resource/app_images/app_images.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_see_more_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

class ViewStoreView extends StatefulWidget {
  const ViewStoreView({super.key});

  @override
  _ViewStoreViewState createState() => _ViewStoreViewState();
}

class _ViewStoreViewState extends State<ViewStoreView> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // Image Logo section
            SliverToBoxAdapter(
              child: ImageLogoWidget(),
            ),

            // User information section (username and description)
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: CustomText(
                        title: 'Istiak Ahmed',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppImages.professionalSellerIcon, width: 20, height: 20),
                        widthBox5,
                        CustomText(
                          title: 'Professional Seller',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    heightBox10,
                    CustomSeeMoreTextWidget(
                      fontSize: 13,
                      text: 'As an experienced and trusted seller, I specialize in offering high-quality products with '
                          'a focus on customer satisfaction. '
                          'With a commitment to providing reliable service and top-tier items Read...',
                    ),
                    heightBox20,
                  ],
                ),
              ),
            ),

            // TabBar section
            SliverPersistentHeader(
              delegate: _SliverAppBarDelegate(
                TabBar(
                  controller: _tabController,
                  tabs: [
                    Tab(text: 'Item for sale'),
                    Tab(text: 'Reviews'),
                  ],
                  labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  indicatorColor: Colors.blue,
                ),
              ),
              pinned: true,
            ),

            // TabBarView section for content (Item for sale and Reviews)
            SliverFillRemaining(
              child: TabBarView(
                controller: _tabController,
                physics: ScrollPhysics(),
                dragStartBehavior: DragStartBehavior.down,
                children: [
                  // "Item for Sale" Tab
                  MasonryGridView.builder(
                    itemCount: 8,
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
                        ),
                      );
                    },
                  ),

                  // "Reviews" Tab
                  ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      physics: ScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ReviewsTab();
                      }
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom delegate for SliverAppBar with TabBar
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar tabBar;

  _SliverAppBarDelegate(this.tabBar);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Material(
      color: Colors.white,
      child: tabBar,
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}



