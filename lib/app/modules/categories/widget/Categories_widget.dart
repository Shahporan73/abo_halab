import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/app_constant/import_list.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_network_image.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';

class CategoriesWidget extends StatelessWidget {
  final String catImage;
  final String catName;
  final Color? textColor;
  final Color? bgColor;
  const CategoriesWidget(
      {super.key, required this.catImage, required this.catName, this.textColor, this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: bgColor?? Color(0xffF7FAFC),
            child: ClipOval(
              child: CustomNetworkImage(
                imageUrl: catImage,
                height: 50,
                width: 50,
                fit: BoxFit.contain,
              ),
            ),
          ),
          heightBox5,
          CustomText(
            title: catName,
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: textColor?? AppColors.violetDarkHover,
          ),
        ],
      ),
    );
  }
}
