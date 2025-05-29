import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';

import '../../../resource/app_colors/App_Colors.dart';
import '../../../resource/app_constant/import_list.dart';
import '../controllers/payment_method_controller.dart';

class BoostCard extends StatelessWidget {
  final String perDay;
  final String price;
  final String? selectedBoost;
  const BoostCard({super.key, required this.perDay, required this.price, this.selectedBoost});

  @override
  Widget build(BuildContext context) {
    final PaymentMethodController paymentMethodController = Get.put(PaymentMethodController());
    return Obx(() {
      bool isSelected = paymentMethodController.selectedBoost.value == selectedBoost;
      return InkWell(
        onTap: () => paymentMethodController.changeBoostIndex(selectedBoost??''),
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: isSelected? AppColors.mainColor : const Color(0xffEDEAF8),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 1,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                title: perDay,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: isSelected? Colors.white : AppColors.black,
              ),
              CustomText(
                title: price,
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: isSelected? Colors.white : AppColors.black,
              ),
              Spacer(),
              CustomText(
                title: 'Select your boost',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: isSelected? Colors.white : AppColors.black,
              ),
            ],
          ),
        ),
      );
    },);
  }
}
