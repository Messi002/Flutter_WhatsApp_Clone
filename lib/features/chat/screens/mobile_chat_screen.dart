// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:whatsapp_clone/app_colors.dart';
import 'package:whatsapp_clone/common/widgets/loader.dart';
import 'package:whatsapp_clone/features/auth/controllers/auth_controller.dart';
import 'package:whatsapp_clone/models/user_model.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';

import '../../../info.dart';
import '../widgets/bottom_chat_field.dart';

class MobileChatScreen extends ConsumerWidget {
  static const String routeName = '/mobile-chat-screen';
  String name;
  String uid;
  String photo;
  MobileChatScreen({
    Key? key,
    required this.name,
    required this.uid,
    required this.photo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      //backgroundColor: AppColors.appBarColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        // title: StreamBuilder<UserModel>(
        //     stream: ref.read(authControllerProvider).userDataById(uid),
        //     builder: (context, snapshot) {
        //       if (snapshot.connectionState == ConnectionState.done) {
        //         return const Loader();
        //       }

        //       return Column(
        //         children: [
        //           Text(name),
        //           Text(
        //             snapshot.data!.isOnline ? 'online' : 'offline',
        //             style:
        //                 TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
        //           ),
        //         ],
        //       );
        //     }),

        title: Text(name),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: ChatList()),
          BottomChatField(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
