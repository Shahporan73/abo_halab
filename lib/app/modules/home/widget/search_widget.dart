import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';

import '../../../resource/app_constant/import_list.dart';

class SearchWidget extends StatelessWidget {
  final String suggestion;
  final VoidCallback? onItemTap;
  const SearchWidget({super.key, required this.suggestion, this.onItemTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Get.height / 18,
          child: ListTile(
            title: CustomText(
              title: suggestion,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            onTap: onItemTap,
          ),
        ),
        const Divider(height: 1, color: Colors.grey),
      ],
    );
  }
}
