import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app_colors.dart';
import 'package:whatsapp_clone/widgets/contact_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.appBarColor,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.photo_camera_outlined,
                  color: Colors.grey,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search_outlined,
                  color: Colors.grey,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_outlined,
                  color: Colors.grey,
                ))
          ],
          bottom: TabBar(
            indicatorColor: AppColors.tabColor,
            labelColor: AppColors.tabColor,
            indicatorWeight: 4,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Icon(Icons.people),
              Text('Chats'),
              Text('Status'),
              Text('Calls'),
            ],
          ),
        ),
        body: const ContactList(),
        floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: AppColors.tabColor,
        child: const Icon(Icons.message, color: Colors.white,),
        ),
      ),
    );
  }
}
