import 'package:flutter/material.dart';
import 'package:whatsapp_clone/features/chat/screens/mobile_chat_screen.dart';

import '../app_colors.dart';
import '../info.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: info.length,
        itemBuilder: (context, index) {
          final item = info[index];
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MobileChatScreen(
                      name: 'Austin',
                      uid: '12345',
                      photo: 'ekdiekdiekdi',
                    ),
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ListTile(
                    title: Text(item['name'].toString(),
                        style: const TextStyle(fontSize: 18)),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        item['message'].toString(),
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage(item['profilePic'].toString()),
                    ),
                    trailing: Text(
                      item['time'].toString(),
                      style: const TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const Divider(
                color: AppColors.dividerColor,
                indent: 85,
              ),
            ],
          );
        },
      ),
    );
  }
}
