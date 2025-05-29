import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../resource/app_constant/cosnt_data.dart';
import '../../../resource/widgets/custom_text.dart';

class TermsConditionView extends GetView {
  const TermsConditionView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Terms And conditions'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomText(
          title: loremText,
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
      ),
    );
  }
}
