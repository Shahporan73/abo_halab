import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PositionBackBtn extends StatelessWidget {
  const PositionBackBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      left: 16,
      child: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {
          Get.back();
        },
      ),
    );
  }
}