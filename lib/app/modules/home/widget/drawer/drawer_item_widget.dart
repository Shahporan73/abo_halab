
import '../../../../resource/app_colors/App_Colors.dart' show AppColors;
import '../../../../resource/app_constant/import_list.dart';
import '../../../../resource/widgets/custom_text.dart';

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? color;
  final VoidCallback? onTap;

  const DrawerItem({Key? key, required this.icon, required this.text, this.color, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height / 18,
      child: ListTile(
        leading: Icon(
          icon,
          color: color?? AppColors.mainColor,
          size: 18,
        ),
        title: CustomText(
          title: text,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        onTap: onTap,
      ),
    );
  }
}