import 'package:abo_halab_app/app/modules/home/widget/custom_see_all_widget.dart';
import 'package:abo_halab_app/app/modules/home/widget/grid_product_card.dart';
import 'package:abo_halab_app/app/modules/product_details/widget/Product_header_widget.dart';
import 'package:abo_halab_app/app/modules/product_details/widget/map_widget.dart';
import 'package:abo_halab_app/app/modules/product_details/widget/product_slider_widget.dart';
import 'package:abo_halab_app/app/modules/product_details/widget/professional_seller_widget.dart';
import 'package:abo_halab_app/app/resource/app_images/app_images.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/utils/launch_url_method.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_button.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/product_details_controller.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  const ProductDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Product Details'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductSliderWidget(),
            heightBox10,
            ProductHeaderWidget(),

            /// Professional Seller
            heightBox10,
            ProfessionalSellerWidget(
              imageUrl:
                  'https://cdn.prod.website-files.com/6452937893cd845b6181c39e/65cd10b25a74e4e74e77bc2c_Joosten-David-240117-8464-fave-final-BG13-linkedin.jpg',
              name: 'Ashfak Sayem',
              date: '03-11-2025',
            ),

            ///map
            heightBox10,
            CustomText(
              title: 'Address',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            heightBox8,
            MapWidget(),

            /// Related to this item
            heightBox10,
            CustomSeeAllWidget(title: 'Related to this item'),
            heightBox5,
            SizedBox(
              height: Get.height / 2.8,
              width: Get.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      print('Click.....');
                      Get.toNamed('/product-details');
                      // Get.to(()=>ProductDetailsView());
                    },
                    child: Container(
                      width: Get.width / 2,
                      margin: EdgeInsets.only(right: 10),
                      color: Colors.white,
                      padding: EdgeInsets.all(2),
                      child: GridProductCard(
                        title: 'Black Winter',
                        imgPath:
                            'https://m.media-amazon.com/images/I/71HjnlfdVVL._AC_UF894,1000_QL80_.jpg',
                        description:
                            'Autumn And Winter Casual cotton-padded jacket...',
                        price: '40',
                        totalReviews: '52555',
                        ratingCount: 5,
                        discountPrice: '30',
                        discountPercentage: '20',
                        isLarge: false,
                      ),
                    ),
                  );
                },
              ),
            ),

            // whatsApp and chat
            heightBox20,
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: InkWell(
                    onTap: () =>
                        LaunchUrlMethod().openWhatsApp(phone: '+8801834567890'),
                    child: Image.asset(
                      AppImages.whatsappIcon,
                      height: 40,
                      width: 40,
                    ),
                  ),
                ),
                Expanded(
                  flex: 15,
                  child: CustomButton(
                    title: 'Chat',
                    widget: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppImages.chatIcon,
                          height: 25,
                          width: 25,
                        ),
                        widthBox10,
                        CustomText(
                          title: 'Message',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        )
                      ],
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),

            heightBox20,
          ],
        ),
      ),
    );
  }
}
