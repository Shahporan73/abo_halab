import 'package:abo_halab_app/app/modules/home/controllers/slider_controller_controller.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_network_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class CarouselSliderWidget extends StatelessWidget {

  final List<String> imageUrls = [
    'https://slidebazaar.com/wp-content/uploads/2021/09/product-banner-jpg.webp',
    'https://i.ytimg.com/vi/f64GdOxJjPE/maxresdefault.jpg',
    'https://static.vecteezy.com/system/resources/thumbnails/017/128/530/small_2x/3d-sale-template-promo-banner-with-50-off-discount-special-offer-and-percentage-sign-vector.jpg',
    'https://img.freepik.com/free-psd/black-friday-super-sale-web-banner-template_106176-1672.jpg?semt=ais_hybrid&w=740',
  ];

  CarouselSliderWidget({super.key});

  final SliderController controller= Get.put(SliderController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 5),

        // Carousel Slider
        CarouselSlider.builder(
          itemCount: imageUrls.length,
          options: CarouselOptions(
            height: Get.height / 6,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enlargeCenterPage: false,
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
              ),
            );
          },
        ),
      ],
    );
  }
}
