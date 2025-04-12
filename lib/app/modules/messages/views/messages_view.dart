import 'package:abo_halab_app/app/modules/messages/widget/user_list_widget.dart';
import 'package:abo_halab_app/app/resource/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/messages_controller.dart';
import 'chat_view.dart';

class MessagesView extends GetView<MessagesController> {
  const MessagesView({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Z2lybCUyMGJlYXV0aWZ1bHxlbnwwfHwwfHx8MA%3D%3D',
      'https://st4.depositphotos.com/25936512/30910/i/450/depositphotos_309109156-stock-photo-pretty-woman-blonde-posing-for.jpg',
      'https://st3.depositphotos.com/3584053/13074/i/450/depositphotos_130742300-stock-photo-pretty-girl-on-sunny-day.jpg',
      'https://images.statusfacebook.com/profile_pictures/fb_beautiful_girl/cute_fb_beautiful_girl_02.jpg',
      'https://photosbulk.com/wp-content/uploads/dpz-dp-for-girls-instagram_27.webp',
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: 'Messages', leading: SizedBox()),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 16),
          shrinkWrap: true,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return UserListWidget(
                name: 'Alisa',
                imgPath: images[index],
                lastMessage: 'ass',
                lastMessageTime: '12:00 am',
                messageCount: 5,
                isOnline: true,
                onTap: () {
                  Get.to(()=>ChatView());
                },
            );
          },
      ),
    );
  }
}