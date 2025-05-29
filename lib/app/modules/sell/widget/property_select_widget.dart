import 'package:abo_halab_app/app/modules/sell/views/properties_view.dart';

import '../../../resource/app_constant/import_list.dart';
import '../../../resource/utils/custom_size.dart';
import '../../../resource/widgets/custom_drop_down_widget.dart';
import '../controllers/sell_controller.dart';
import '../views/properties_for_rent_view.dart';

class PropertySelectWidget extends StatelessWidget {
  const PropertySelectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final SellController sellController = Get.put(SellController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        heightBox10,
        Text('Property Type', style: titleStyle,),
        heightBox5,
        Obx(
          () => CustomDropDownWidget(
            selectedValue: sellController.selectedProperty.value,
            items: [
              'For Rent',
              'For Sale',
              'Wanted to Rent',
              'Cabins',
              'Land Plot',
            ],
            hintText: 'Select Property Type',
            onChanged: (value) {
              sellController.updateProperty(value!);
              if (value == 'For Rent') {
                Get.to(()=>PropertiesForRentView());
              }
              else if ([
                'For Sale',
                'Wanted to Rent',
                'Cabins',
                'Land Plot',
              ].contains(value)) {
                Get.to(() => PropertiesView());
              }
            },
          ),
        )
      ],
    );
  }
}
