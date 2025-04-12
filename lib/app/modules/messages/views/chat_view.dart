import 'package:abo_halab_app/app/resource/app_colors/App_Colors.dart';
import 'package:abo_halab_app/app/resource/app_images/app_images.dart';
import 'package:abo_halab_app/app/resource/utils/custom_size.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_network_image.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatView extends GetView {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> chatMessages = [
      {
        "sender": "User",
        "message": "Hey there! 👋",
        "time": "10:08",
        "isSentByMe": false,
      },
      {
        "sender": "User",
        "message":
            "Game RA 2 has just had a new update for macOS.\nThere is support for many new items and characters. 😌",
        "time": "10:08",
        "isSentByMe": false,
      },
      {
        "sender": "Me",
        "message": "Hi!",
        "time": "10:10",
        "isSentByMe": true,
      },
      {
        "sender": "Me",
        "message":
            "Great, thanks for letting me know! \nI really look forward to experiencing it soon. 🎉",
        "time": "10:11",
        "isSentByMe": true,
      },
      {
        "sender": "User",
        "message": "Does this update fix error 352 for the Engineer character?",
        "time": "10:11",
        "isSentByMe": false,
      },
    ];

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 28, bottom: 0),
            decoration: BoxDecoration(
                color: Color(0xffEDEAF8)
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Icon(Icons.arrow_back, color: Colors.black),
                ),
                Expanded(
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: CustomNetworkImage(
                        imageUrl:
                        'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    title: CustomText(
                      title: "Alisha",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff1D242D),
                    ),
                    subtitle: CustomText(
                      title: "Active now",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Divider(color: Colors.grey.shade300, height: 1,),
          0.heightBox,
          Expanded(
            child: ListView.builder(
              itemCount: chatMessages.length,
              itemBuilder: (context, index) {
                final message = chatMessages[index];
                final isSentByMe = message['isSentByMe'] as bool;

                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 10.0),
                  child: Align(
                    alignment: isSentByMe
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      width: width * 0.70,
                      decoration: BoxDecoration(
                        color: isSentByMe
                            ? AppColors.mainColor
                            : AppColors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: isSentByMe
                                ? Radius.circular(0)
                                : Radius.circular(10),
                            topLeft: isSentByMe
                                ? Radius.circular(10)
                                : Radius.circular(0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            message['message'],
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: isSentByMe
                                    ? Colors.white
                                    : Color(0xff1D242D)),
                          ),
                          6.heightBox,
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              message['time'],
                              style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: isSentByMe
                                      ? Colors.white
                                      : AppColors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 2,
                )
              ],
            ),
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Message',
                      suffixIcon: Container(
                        width: 80,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                // PickerDialog()
                                //     .showImagePickerDialog(context);
                              },
                              child: Icon(
                                Icons.image,
                                color: AppColors.mainColor,
                                size: 26,
                              ),
                            ),
                            widthBox10,
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: AppColors.mainColor,
                                  shape: BoxShape.circle),
                              child: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  AppImages.sendIcon,
                                  height: 25,
                                  width: 25,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
