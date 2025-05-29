import 'package:abo_halab_app/app/resource/widgets/custom_see_more_widget.dart';

import '../../../resource/app_colors/App_Colors.dart';
import '../../../resource/app_constant/import_list.dart';
import '../../../resource/utils/custom_size.dart' show heightBox5, widthBox10;
import '../../../resource/widgets/custom_text.dart';

class ProfileItemWidget extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String value;
  const ProfileItemWidget({super.key, required this.iconData, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffF6F6F6),
              ),
              child: Icon(
                iconData,
                color: AppColors.black,
                size: 32,
              ),
            ),
            widthBox10,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    title: title,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  heightBox5,
                  CustomSeeMoreTextWidget(
                    text: value,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
        heightBox5,
        Divider(height: 10,),
      ],
    );
  }
}
