import 'package:abo_halab_app/app/modules/home/widget/filter/custom_chiplist_widget.dart';
import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_button.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../../../../resource/app_constant/import_list.dart';

void showFilterBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) => Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SizedBox(
        height: Get.height / 1.1,
        child: FilterSheetContent(),
      ),
    ),
  );
}

class FilterSheetContent extends StatefulWidget {
  @override
  State<FilterSheetContent> createState() => _FilterSheetContentState();
}

class _FilterSheetContentState extends State<FilterSheetContent> {
  String selectedCategory = '';
  String selectedArea = '';
  String selectedBrand = '';
  String selectedCondition = '';

  final List<String> categories = [
    'Properties', 'Car', 'Boat', 'Motorcycle', 'Bicycles',
    'Jobs', 'Books', 'Furniture', 'Electronics', 'Clothes',
  ];

  final List<String> areas = [
    'Agder', 'Akershus', 'Buskerud', 'Østfold', 'Finnmark',
    'Innlandet', 'Møre og Romsdal', 'Nordland', 'Oslo',
    'Svalbard', 'Telemark', 'Troms', 'Trøndelag', 'Vestfold',
    'Vestland',
  ];

  final List<String> brands = [
    'Apple', 'Sony', 'Samsung', 'Xiaomi', 'HP', 'Lenovo',
    'Asus', 'Dell', 'Acer', 'Microsoft',
  ];

  final List<String> conditions = ['New', 'Used'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              const SizedBox(height: 10),
              CustomText(title: "Categories", fontWeight: FontWeight.bold),
              const SizedBox(height: 10),
              CustomChiplistWidget(
                items: categories,
                selected: selectedCategory,
                onSelect: (val) {
                  setState(() {
                    selectedCategory = val;
                  });
                },
              ),
              const SizedBox(height: 20),
              CustomText(title: "Area", fontWeight: FontWeight.bold),
              const SizedBox(height: 10),
              CustomChiplistWidget(
                items: areas,
                selected: selectedArea,
                onSelect: (val) {
                  setState(() {
                    selectedArea = val;
                  });
                },
              ),
              const SizedBox(height: 20),
              CustomText(title: "Brand", fontWeight: FontWeight.bold),
              const SizedBox(height: 10),
              CustomChiplistWidget(
                items: brands,
                selected: selectedBrand,
                onSelect: (val) {
                  setState(() {
                    selectedBrand = val;
                  });
                },
              ),
              const SizedBox(height: 20),
              CustomText(title: "Condition", fontWeight: FontWeight.bold),
              const SizedBox(height: 10),
              CustomChiplistWidget(
                items: conditions,
                selected: selectedCondition,
                onSelect: (val) {
                  setState(() {
                    selectedCondition = val;
                  });
                },
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      onTap: () {
                        setState(() {
                          selectedCategory = '';
                          selectedArea = '';
                          selectedBrand = '';
                          selectedCondition = '';
                        });
                      },
                      title: 'Reset All',
                      buttonColor: const Color(0xffF3F0FF),
                      titleColor: AppColors.mainColor,
                      border: Border.all(color: AppColors.mainColor, width: 1),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: CustomButton(
                      onTap: () {
                        Navigator.pop(context);
                        // Handle Apply Filters logic here
                      },
                      title: "Apply Filters",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
