import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app_colors.dart';

class SenderMessageCard extends StatelessWidget {
  final String message;
  final String date;

  const SenderMessageCard({super.key, required this.message, required this.date});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width -
              45, //creating some sort of padding
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: AppColors.senderMessageColor,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 30, top: 5, bottom: 20),
                child: Text(
                  message,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              Positioned(
                  bottom: 2,
                  right: 10,
                  child: Row(
                    children: [
                      Text(
                        date,
                        style: const TextStyle(
                            fontSize: 13, color: Colors.white60),
                      ),
                      const SizedBox(width: 5),
                      const Icon(Icons.done_all,
                          color: Colors.white60, size: 20)
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
