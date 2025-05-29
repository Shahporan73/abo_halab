import 'package:abo_halab_app/app/modules/dashboard/views/dashboard_view.dart';
import 'package:abo_halab_app/app/modules/sell/widget/car/car_form_one.dart';
import 'package:abo_halab_app/app/modules/sell/widget/car/car_form_three.dart';
import 'package:abo_halab_app/app/modules/sell/widget/car/car_form_two.dart';
import 'package:abo_halab_app/app/modules/sell/widget/properties/properties_form_three.dart';
import 'package:abo_halab_app/app/modules/sell/widget/properties/properties_form_two.dart';
import 'package:abo_halab_app/app/modules/sell/widget/properties/property_form_one.dart';
import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/app_constant/import_list.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../resource/utils/custom_size.dart' show heightBox10, titleStyle;
import '../widget/step_clip_path.dart';

class AddItemCarView extends StatefulWidget {
  const AddItemCarView({super.key});

  @override
  _AddItemCarViewState createState() => _AddItemCarViewState();
}

class _AddItemCarViewState extends State<AddItemCarView> {
  final PageController controller = PageController();
  int currentStep = 0;
  @override
  void initState() {
    super.initState();
    currentStep = 0;
  }

  void _nextStep() {
    if (currentStep < 2) {
      setState(() {
        currentStep++;
      });
      controller.animateToPage(
        currentStep,
        duration: Duration(milliseconds: 10),
        curve: Curves.easeInOut,
      );
    } else {
      // Handle finishing the form
      _finishForm();
    }
  }

  void _finishForm() {
    Get.offAll(()=>DashboardView());
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Form Submitted!")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Add Item'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Left line
                  Container(
                    height: 2,
                    width: 30,
                    color: AppColors.mainColor
                  ),
                  // Steps
                  ...List.generate(3, (index) {
                    bool isActive = controller.hasClients && controller.page?.round() == index;
                    bool isCompleted = controller.hasClients && controller.page!.round() > index;
                    return Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ClipPath(
                            clipper: StepClipper(isActive: isActive),
                            child: Container(
                              height: 30,
                              width: 30,
                              color: isCompleted ? AppColors.mainColor : isActive ? AppColors.mainColor : Colors.grey,
                              child: Icon(
                                Icons.check,
                                size: 16,
                                color: isCompleted || isActive ? Colors.white : Colors.white,
                              ),
                            ),
                          ),
                        ),
                        // Add line between steps
                        if (index != 2) ...[
                          Container(
                            height: 2,
                            width: 30,
                            color: isCompleted ? AppColors.mainColor : Colors.grey,
                          ),
                        ],
                      ],
                    );
                  }),
                  // Right line
                  Container(
                    height: 2,
                    width: 30,
                    color: controller.hasClients && controller.page!.round() == 2 ? AppColors.mainColor : Colors.grey,
                  ),
                ],
              ),
            ),

            // PageView for dynamic content and navigation
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: PageView(
                  controller: controller,
                  onPageChanged: (index) {
                    setState(() {
                      currentStep = index;
                    });
                  },
                  children: [
                    _buildStepContent(0),
                    _buildStepContent(1),
                    _buildStepContent(2),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            // "Next" button
            Align(
              alignment: Alignment.center,
              child: CustomButton(
                onTap: _nextStep,
                title: currentStep == 2 ? 'Submit' : 'Next',
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Build the content for each step based on the step index
  Widget _buildStepContent(int stepIndex) {
    switch (stepIndex) {
      case 0:
        return CarFormOne();
      case 1:
        return CarFormTwo();
      case 2:
        return CarFormThree();
      default:
        return SizedBox.shrink();
    }
  }
}
