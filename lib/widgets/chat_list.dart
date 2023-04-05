import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/sender_message_card.dart';

import '../info.dart';
import 'my_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final item = messages[index];
        if (item['isMe'] == true) {
          //My messageCard
          return MyMessageCard(message: item['text'].toString(), date: item['date'].toString(),);
        }
        //Sender message
         return SenderMessageCard(message: item['text'].toString(), date: item['date'].toString(),);
      },
    );
  }
}


//1: 06 : 26