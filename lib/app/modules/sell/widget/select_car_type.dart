import 'package:abo_halab_app/app/modules/sell/controllers/sell_controller.dart';
import 'package:abo_halab_app/app/modules/sell/views/add_item_car_view.dart';
import 'package:abo_halab_app/app/resource/app_constant/import_list.dart';

import '../../../resource/utils/custom_size.dart';
import '../../../resource/widgets/custom_drop_down_widget.dart';
import '../views/add_item_bobil_view.dart';
import '../views/add_item_caravan_view.dart';

class SelectCarType extends StatelessWidget {
  const SelectCarType({super.key});

  @override
  Widget build(BuildContext context) {
    final SellController controller = Get.find<SellController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        heightBox10,
        Text('Car Type', style: titleStyle,),
        heightBox5,
        Obx(() => CustomDropDownWidget(
          selectedValue: controller.selectedCarType.value,
          items: ["car for sale", "car for rent", "bobil", "caravan"],
          hintText: 'Select car type',
          onChanged: (value) {
            controller.updateCarType(value!);
            if (value == 'bobil') {
              Get.to(() => AddItemBobilView());
            }
            else if (value == 'caravan') {
              Get.to(() => AddItemCaravanView());
            }
            else if (["car for sale", "car for rent"].contains(value)) {
              Get.to(() => AddItemCarView());
            }
          },
        ),),
      ],
    );
  }
}
