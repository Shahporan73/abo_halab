import 'package:flutter/material.dart';
import 'package:abo_halab_app/app/resource/app_colors/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:abo_halab_app/app/resource/app_colors/app_colors.dart';

class CustomDropDownWidget extends StatefulWidget {
  final List<String> items;
  final ValueChanged<String?>? onChanged;
  final String hintText;
  final Decoration? decoration;
  final double? paddingHorizontal;
  final bool? isExpanded;
  final TextStyle? textStyle;
  final Color? dropDownColor;
  final TextStyle? hintStyle;
  final Function()? onTap;
  final Widget? iconWidget;
  final double? width;
  final double? height;
  final String? selectedValue;  // New parameter for selected value

  const CustomDropDownWidget({
    super.key,
    required this.items,
    this.onChanged,
    required this.hintText,
    this.decoration,
    this.paddingHorizontal,
    this.isExpanded,
    this.textStyle,
    this.dropDownColor,
    this.hintStyle,
    this.onTap,
    this.iconWidget,
    this.width,
    this.height,
    this.selectedValue,
  });

  @override
  State<CustomDropDownWidget> createState() => _CustomDropDownWidgetState();
}

class _CustomDropDownWidgetState extends State<CustomDropDownWidget> {
  late String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.selectedValue ?? '';
  }

  @override
  Widget build(BuildContext context) {
    final uniqueItems = widget.items.toSet().toList();

    return Container(
      height: widget.height ?? MediaQuery.of(context).size.height * 0.06,
      width: widget.width ?? double.infinity,
      padding: EdgeInsets.symmetric(horizontal: widget.paddingHorizontal ?? 10),
      decoration: widget.decoration ??
          BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.black, width: 1.0),
            borderRadius: BorderRadius.circular(8),
          ),
      child: DropdownButton<String>(
        value: selectedValue?.isEmpty ?? true ? null : selectedValue,

        hint: Text(
          widget.hintText,
          style: widget.hintStyle ?? TextStyle(fontSize: 14, color: Colors.grey),
        ),
        underline: SizedBox(),
        onChanged: (value) {
          setState(() {
            selectedValue = value;
          });
          if (widget.onChanged != null) {
            widget.onChanged!(value);
          }
        },
        items: uniqueItems.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        isExpanded: widget.isExpanded ?? true,
        style: widget.textStyle ?? TextStyle(color: Colors.black, fontSize: 14),
        icon: widget.iconWidget ?? Icon(Icons.arrow_drop_down, color: Colors.black),
        dropdownColor: widget.dropDownColor ?? AppColors.white,
        onTap: widget.onTap,
      ),
    );
  }
}

