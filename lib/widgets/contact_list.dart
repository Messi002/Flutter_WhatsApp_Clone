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
                      photo: 'data:image/jpeg;base64,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',
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
