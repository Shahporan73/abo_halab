import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/app_constant/cosnt_data.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_network_image.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../resource/app_constant/import_list.dart';

class ReviewsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(bottom: 10, left: 1, right: 1, top: 1),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
            ),
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: AppColors.mainColor,
            child: ClipOval(
              child: CustomNetworkImage(
                imageUrl: profileImage,
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),
          widthBox10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomText(
                      title: 'Abo Halab',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    Spacer(),
                    CustomText(
                      title: '12/06/24',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                heightBox5,
                RatingBarIndicator(
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 14,
                  ),
                  itemCount: 5,
                  rating: 4,
                  itemSize: 14,
                ),
                CustomText(
                  title:
                      'I highly recommend this swapper for anyone in need of a reliable service. My overall experience with it has been exceptionally positive.',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
