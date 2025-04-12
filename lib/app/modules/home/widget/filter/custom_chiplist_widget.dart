import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomChiplistWidget extends StatelessWidget {
  final List<String> items;
  final String selected;
  final Function(String) onSelect;

  const CustomChiplistWidget({
    Key? key,
    required this.items,
    required this.selected,
    required this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      runSpacing: 0,
      children: items.map((item) {
        final bool isSelected = selected == item;
        return ChoiceChip(
          backgroundColor: Colors.white,
          checkmarkColor: Colors.white,
          label: CustomText(
            title: item,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: isSelected ? Colors.white : Colors.black,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          selected: isSelected,
          selectedColor: AppColors.mainColor,
          onSelected: (_) => onSelect(item),
        );
      }).toList(),
    );
  }
}
