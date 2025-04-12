// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/app_constant/import_list.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class GridProductCard extends StatelessWidget {
  final String title;
  final String imgPath;
  final String description;
  final String price;
  final String discountPrice;
  final String discountPercentage;
  final String totalReviews;
  final double ratingCount;
  final bool isLarge;

  GridProductCard({
    Key? key,
    required this.title,
    required this.imgPath,
    required this.description,
    required this.price,
    required this.totalReviews,
    required this.ratingCount,
    this.isLarge = false,
    required this.discountPrice,
    required this.discountPercentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to get the screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.only(top: 5),
      height: isLarge ? screenHeight * 0.40 : screenHeight * 0.35,
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image and Heart Icon Stack
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                child: CustomNetworkImage(
                  imageUrl: imgPath,
                  height: isLarge ? screenHeight * 0.23 : screenHeight * 0.18,
                  width: double.infinity,
                ),
              ),
              // Heart Icon
              Positioned(
                top: 0,
                right: 5,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color(0xffEDEAF8),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),

          // Title and Description wrapped inside a flexible height container
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.025, vertical: screenHeight * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                heightBox5,
                // Description
                Text(
                  description,
                  style: GoogleFonts.montserrat(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: screenHeight * 0.005),
                // Price
                Row(
                  children: [
                    discountPrice != 0 ? Text(
                      '\$$discountPrice',
                      style: GoogleFonts.montserrat(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ):SizedBox(),

                    widthBox5,
                    Text(
                      '\$$price',
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColors.mainColor,
                      ),
                    ),
                  ],
                ),

                // Rating and reviews
                heightBox5,
                Row(
                  children: [
                    RatingBarIndicator(
                      rating: ratingCount,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: screenWidth * 0.04,
                      direction: Axis.horizontal,
                    ),
                    widthBox5,
                    Text(
                      totalReviews,
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffB5B5B5),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
