import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_alert_dialog.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_network_image.dart';

import '../../../resource/app_colors/App_Colors.dart';
import '../../../resource/app_constant/import_list.dart';
import '../../../resource/widgets/custom_text.dart';

class YourProductCard extends StatelessWidget {
  const YourProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 1),
      child: Container(
        width: Get.width / 1.6,
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: AppColors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 1))
          ],),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height / 6,
              child: Stack(
                children: [
                  Positioned.fill(
                      child: CustomNetworkImage(
                        imageUrl:
                        'https://waltonbd.com/image/catalog/category-banner/refrigerator/freezer-to-fridge-switch-whenever-you-need.jpg',
                        fit: BoxFit.cover,
                        height: Get.height / 6,
                        width: Get.width,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                      )),
                ],
              ),
            ),
            heightBox5,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomText(
                        title: 'Dominos Pizza - Banasree',
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                      Spacer(),
                      CustomText(
                        title: '\$45',
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                        color: Colors.red,
                      )
                    ],
                  ),
                  heightBox5,
                  Row(
                    children: [
                      CustomText(title: 'Delicouse tackos, appetizing...', fontSize: 12),
                      Spacer(),
                      InkWell(
                        child: Icon(Icons.edit_outlined, size: 18,),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      InkWell(
                        onTap: () {
                          CustomAlertDialog().customAlert(
                              context: context,
                              title: "Want to Delete?",
                              message: 'Are you sure you want to delete the item?',
                              NegativebuttonText: "Cancel",
                              PositivvebuttonText: "Delete",
                              onPositiveButtonPressed: () {
                                Navigator.pop(context);
                              },
                          );
                        },
                        child: Icon(Icons.delete_outline, color: Colors.red, size: 18,),
                      ),
                    ],
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
