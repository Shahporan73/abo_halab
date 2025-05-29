import 'package:abo_halab_app/app/modules/sell/views/add_item_bobil_view.dart';
import 'package:abo_halab_app/app/modules/sell/widget/category_widget.dart';
import 'package:abo_halab_app/app/modules/sell/widget/select_car_type.dart';
import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_check_box_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_dotted_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_drop_down_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';

import '../../../../resource/app_constant/import_list.dart';
import '../../../../resource/utils/custom_size.dart';
import '../../../../resource/widgets/custom_Text_field.dart';
import '../../../profile/widget/select_multiple_image_widget.dart';
import '../../views/add_item_caravan_view.dart';

class CarFormOne extends StatelessWidget {
  const CarFormOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectMultipleImageWidget(),

          CategoryWidget(),

          SelectCarType(),


          heightBox10,
          Text('Title (Required)', style: titleStyle,),
          heightBox5,
          CustomTextField(
            hint: 'EX., Teen Tops & Pant',
            isLabel: false,
          ),


          heightBox10,
          Text('Tax class (required)', style: titleStyle,),
          heightBox5,
          CustomDropDownWidget(
            items: ["Combi", "Light truck", "Minibus", "passenger car", "Van", "Other"],
            hintText: 'Select tax class',
            onChanged: (value) {},
          ),

          heightBox10,
          Text('Registration number', style: titleStyle,),
          heightBox5,
          CustomTextField(
            hint: 'EX., 123456',
            isLabel: false,
          ),

          heightBox10,
          Text('Chassis number', style: titleStyle,),
          heightBox5,
          CustomTextField(
            hint: 'EX., 123456',
            isLabel: false,
          ),

          heightBox10,
          Text('Model year (required)', style: titleStyle,),
          heightBox5,
          CustomTextField(
            hint: 'Enter model year',
            isLabel: false,
          ),


          heightBox10,
          Text('Car brand (required)', style: titleStyle,),
          heightBox5,
          // CustomDropDownWidget(
          //   items: ['Brand 1', 'Brand 2', 'Brand 3'],
          //   hintText: 'Select brand',
          //   onChanged: (value) {},
          // ),
          CustomTextField(
            hint: 'Enter car brand',
            isLabel: false,
          ),

          heightBox10,
          Text('Car model (required)', style: titleStyle,),
          heightBox5,
          // CustomDropDownWidget(
          //   items: ['Model 1', 'Model 2', 'Model 3'],
          //   hintText: 'Select model',
          //   onChanged: (value) {},
          // ),
          CustomTextField(
            hint: 'Enter car model',
            isLabel: false,
          ),


          heightBox10,
          Text('Model specification', style: titleStyle,),
          heightBox5,
          CustomTextField(
            hint: 'write this description under the text field: Max 70 characters.',
            isLabel: false,
            maxLine: 4,
            vertical_padding: 8,
            height: Get.height / 8,
          ),

          heightBox10,
          Text('The car is parked in', style: titleStyle,),
          heightBox5,
          CustomDropDownWidget(
            items: ["Norway", "Abroad"],
            hintText: 'Select car parked',
            onChanged: (value) {},
          ),

          heightBox10,
          Text('Fuel (required)', style: titleStyle,),
          heightBox5,
          CustomDropDownWidget(
            items: ["Petrol", "Diesel", "EI", "Gas", "Gas+petrol", "Gas+diesel", "Hybrid gasoline", "Hybrid diesel", "Hydrogen"],
            hintText: 'Select fuel',
            onChanged: (value) {},
          ),

          heightBox10,
          Text('Is or has the car\'s engine been tuned?', style: titleStyle,),
          heightBox5,
          Row(
            children: [
              CustomCheckboxWidget(
                width: Get.width / 4,
                  value: false,
                  onChanged: (value) {

                  },
                  label: 'Yes'
              ),
              CustomCheckboxWidget(
                  value: false,
                  onChanged: (value) {

                  },
                  label: 'No'
              )
            ],
          ),
          CustomText(
              title: 'If the engine has been mechanically or electronically tuned for more power / horsepower, you must state this.',
            color: Color(0xffB5B5B5),
            fontSize: 10,
          ),


          heightBox10,
          Text('Transmission (required)', style: titleStyle,),
          heightBox5,
          CustomDropDownWidget(
            items: ["Automatic", "Manual"],
            hintText: 'Select transmission',
            onChanged: (value) {},
          ),

          heightBox10,
          Text('Transmission designation', style: titleStyle,),
          heightBox5,
          CustomDropDownWidget(
            items: ["Steptronic", "4-MATIC", "manual 6-speed"],
            hintText: 'Select designation',
            onChanged: (value) {},
          ),

          heightBox10,
          Text('Wheel drive (required)', style: titleStyle,),
          heightBox5,
          CustomDropDownWidget(
            items: ["Rear-wheel drive", "Front-wheel drive", "All-wheel drive"],
            hintText: 'Select wheel drive',
            onChanged: (value) {},
          ),

          heightBox10,
          Text('Wheel drive designation', style: titleStyle,),
          heightBox5,
          CustomDropDownWidget(
            items: ["xDrive", "4WD", "4MOTION"],
            hintText: 'Select wheel drive designation',
            onChanged: (value) {},
          ),


        ],
      ),
    );
  }
}
