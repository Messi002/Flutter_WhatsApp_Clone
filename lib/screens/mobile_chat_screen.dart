// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app_colors.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';

import '../info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.appBarColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        title: Text(info[0]['name'].toString()),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: ChatList()),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.appBarColor,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.emoji_emotions,
                  color: Colors.grey,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.attach_file_rounded,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.photo_camera,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              hintText: 'Message',
              hintStyle: TextStyle(fontWeight: FontWeight.bold),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  width: 0,
                 style: BorderStyle.none 
                ),
              ),
              contentPadding: const EdgeInsets.all(10),
            ),
            
            
          ),
        ],
      ),
    );
  }
}
