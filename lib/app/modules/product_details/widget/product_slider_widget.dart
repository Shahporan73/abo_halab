import 'package:abo_halab_app/app/modules/product_details/controllers/product_slider_controller.dart';
import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductSliderWidget extends StatelessWidget {
  final List<String> imageUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlndpwDalSNF8TzBG6T7kGv73l0IOReNJpKw&s',
    'https://images.pexels.com/photos/3497065/pexels-photo-3497065.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbqGt6i4lobomuPqTGoVaAE_W9VaqUAHTGNg&s',
    'https://images.pexels.com/photos/5418398/pexels-photo-5418398.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  ];

  ProductSliderWidget({super.key});

  final ProductSliderController controller = Get.put(ProductSliderController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 5),

        // Carousel Slider
        CarouselSlider.builder(
          itemCount: imageUrls.length,
          options: CarouselOptions(
            height: Get.height / 4,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enlargeCenterPage: false,
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              controller.updateIndex(index);
            },
          ),
          itemBuilder: (context, index, realIndex) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: CustomNetworkImage(
                imageUrl: imageUrls[index],
                height: Get.height,
                width: Get.width,
                fit: BoxFit.cover,
                borderRadius: BorderRadius.circular(8),
              ),
            );
          },
        ),

        const SizedBox(height: 10),
        // SmoothPageIndicator
        Obx(
          () => AnimatedSmoothIndicator(
            activeIndex: controller.currentIndex.value,
            count: imageUrls.length,
            effect: const ExpandingDotsEffect(
              dotHeight: 6,
              dotWidth: 8,
              spacing: 8,
              activeDotColor: AppColors.mainColor,
              dotColor: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
