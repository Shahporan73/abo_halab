import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/app_constant/import_list.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_see_more_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductHeaderWidget extends StatelessWidget {
  const ProductHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: CustomText(
                  title: 'DSLR Camera',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.violetDarkHover,
                ),
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffEDEAF8),
                  ),
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.black,
                  ),
                ),
              ),
              widthBox5,
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffEDEAF8),
                  ),
                  child: Icon(
                    Icons.share,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              RatingBarIndicator(
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                rating: 4.5,
                itemCount: 5,
                itemSize: 20.0,
                direction: Axis.horizontal,
              ),
              widthBox5,
              CustomText(
                  title: '2545 Reviews', fontSize: 12, color: Colors.grey)
            ],
          ),
          heightBox5,
          Row(
            children: [
              CustomText(
                title: 'Brand :',
                fontSize: 12,
              ),
              widthBox5,
              CustomText(
                title: 'Canon',
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              widthBox20,
              CustomText(
                title: 'Condition: :',
                fontSize: 12,
              ),
              widthBox5,
              CustomText(
                title: 'New',
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          heightBox5,
          Row(
            children: [
              CustomText(
                title: '\$2,999',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.grey,
                decorationThickness: 1,
                color: Colors.grey,
              ),
              widthBox5,
              CustomText(
                title: '\$1,500',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: AppColors.mainColor,
              ),
              widthBox5,
              CustomText(
                title: '50% Off',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ],
          ),
          heightBox8,
          InkWell(
            onTap: (){},
            child: CustomText(
              title: 'Reviews',
              fontSize: 14,
              color: AppColors.violetDarkHover,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.violetDarkHover,
              decorationThickness: 1,
            ),
          ),
          heightBox10,
          CustomText(
              title: 'Product Details',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
          ),
          heightBox5,
          // CustomText(title: details),
          CustomSeeMoreTextWidget(
              text: details,
            maxLines: 8,
          )
        ],
      ),
    );
  }
}

const details = 'Note: If the size of the earbud tips does not'
    ' match the size of your ear canals or the headset is not worn properly in your ears, '
    'you may not obtain the correct sound qualities or call performance. Change the earbud '
    'tips to ones that fit more snugly in your ear. '
    '. Compact and comfortable Echo Buds are small, light, and sweat-resistant, with a secure, customizable fit that\'s made to move with you.'
    '• Hands-free entertainment - Echo Buds work with the Alexa app to stream music, play podcasts, and read Audible audiobooks-just ask.'
    'Built-in microphone with controller (answer or hang up calls; pause or skip tracks).';