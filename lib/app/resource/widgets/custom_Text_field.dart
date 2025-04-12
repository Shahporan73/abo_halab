// ignore_for_file: prefer_const_constructors

import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_colors/App_Colors.dart';

class CustomTextField extends StatefulWidget {
  final String hint;
  final double? height;
  final double? vertical_padding;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Color focusColor;
  final VoidCallback? onTap;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final int? maxLine;
  final TextAlign textAlign;
  final bool readOnly;
  final TextStyle? style;
  final bool obscureText;
  final String obscuringCharacter;
  final Function(String?)? onSaved;
  final double borderRadius;
  final Color borderColor;
  final double borderWidth;
  final bool? filled;
  final Color? hintColor;
  final Color fillColor;
  final double focusBorderRadius;
  final double focusBorderWidth;
  final String? errorText;
  final String? Function(String?)? validator;
  final bool isBorder;
  final double? hintFontSize;
  final double? fontSize;
  final InputDecoration? decoration;
  final bool? isLabel;
  final String? labelText;

  const CustomTextField({
    super.key,
    required this.hint,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.focusColor = AppColors.mainColor,
    this.onTap,
    this.onChanged,
    this.keyboardType,
    this.maxLine = 1,
    this.readOnly = false,
    this.obscureText = false,
    this.textAlign = TextAlign.start,
    this.obscuringCharacter = '•',
    this.style,
    this.onSaved,
    this.borderRadius = 8,
    this.focusBorderRadius = 8,
    this.borderColor = Colors.grey,
    this.borderWidth = 1.0,
    this.filled = false,
    this.fillColor = const Color(0xffFFFFFF),
    this.focusBorderWidth = 1,
    this.errorText,
    this.validator,
    this.hintColor,
    this.height,
    this.vertical_padding,
    this.isBorder = true,
    this.hintFontSize,
    this.fontSize,
    this.decoration,
    this.isLabel = true,
    this.labelText,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscure = true;

  @override
  void initState() {
    _obscure = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: widget.height ?? MediaQuery.of(context).size.height * 0.07,
      child: TextFormField(
        controller: widget.controller,
        decoration: widget.decoration ??
            InputDecoration(
              filled: widget.filled,
              fillColor: widget.fillColor,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: widget.focusColor, width: widget.focusBorderWidth),
                borderRadius: BorderRadius.circular(widget.focusBorderRadius),
              ),
              label: widget.isLabel == true
                  ? CustomText(
                title: widget.labelText ?? '',
                fontWeight: FontWeight.w500,
                fontSize: 12,
              )
                  : null,
              border: OutlineInputBorder(
                borderSide: widget.isBorder == false
                    ? BorderSide.none
                    : BorderSide(width: widget.borderWidth, color: widget.borderColor),
                borderRadius: BorderRadius.circular(widget.borderRadius),
              ),
              hintText: widget.isLabel == true ? null : widget.hint,
              hintStyle: GoogleFonts.urbanist(
                color: widget.hintColor ?? Color(0xff595959),
                fontWeight: FontWeight.w400,
                fontSize: widget.hintFontSize ?? 12,
              ),
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.obscureText
                  ? IconButton(
                icon: Icon(
                  _obscure ? Icons.visibility_off : Icons.visibility,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    _obscure = !_obscure;
                  });
                },
              )
                  : widget.suffixIcon,
              errorText: widget.errorText,
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: widget.vertical_padding ?? 0),
            ),
        onTap: widget.onTap,
        onChanged: widget.onChanged,
        keyboardType: widget.keyboardType,
        maxLines: widget.maxLine,
        textAlign: widget.textAlign,
        readOnly: widget.readOnly,
        style: widget.style ??
            GoogleFonts.urbanist(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
        obscureText: _obscure,
        obscuringCharacter: widget.obscuringCharacter,
        onSaved: widget.onSaved,
        validator: widget.validator,
      ),
    );
  }
}
