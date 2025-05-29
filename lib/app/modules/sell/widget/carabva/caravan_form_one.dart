import 'package:abo_halab_app/app/modules/sell/data_list/caravan_data_list.dart';
import 'package:abo_halab_app/app/modules/sell/widget/category_widget.dart';
import 'package:abo_halab_app/app/modules/sell/widget/select_car_type.dart';
import 'package:abo_halab_app/app/resource/app_constant/import_list.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_dotted_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';

import '../../../../resource/app_colors/App_Colors.dart';
import '../../../../resource/widgets/custom_Text_field.dart';
import '../../../../resource/widgets/custom_drop_down_widget.dart';
import '../../../profile/widget/select_multiple_image_widget.dart';

class CaravanFormOne extends StatelessWidget {
  const CaravanFormOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectMultipleImageWidget(),
      
          heightBox10,
          CategoryWidget(),


          SelectCarType(),


          heightBox10,
          Text('Are you selling or renting a caravan?', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: ['Selling', 'Renting'],
            hintText: 'Select one',
            onChanged: (value) {},
          ),
          heightBox10,
          Text('Model year (required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Ex., 2022',
            isLabel: false,
          ),
          heightBox10,
          Text('Brand', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: caravanBrands,
            hintText: 'Choose your brand',
            onChanged: (value) {},
          ),

          heightBox10,
          Text('The caravan is parked in', style: titleStyle),
          heightBox5,
          CustomDropDownWidget(
            items: ['Norway', 'abroad'],
            hintText: 'Select one',
            onChanged: (value) {},
          ),
          heightBox10,
          Text('Number of sleeping places (required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Ex., 6',
            isLabel: false,
          ),
          heightBox10,
          Text('Weight in kg (required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Ex., 6000',
            isLabel: false,
          ),
          heightBox10,
          Text('Total weight in kg (required)', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Ex., 6000',
            isLabel: false,
          ),
          heightBox10,
          Text('Total length in cm', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Ex., 6000',
            isLabel: false,
          ),
          heightBox10,
          Text('Interior length in cm', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Ex., 6000',
            isLabel: false,
          ),
          heightBox10,
          Text('Width in cm', style: titleStyle),
          heightBox5,
          CustomTextField(
            hint: 'Ex., 6000',
            isLabel: false,
          ),

      
        ],
      ),
    );
  }
}
