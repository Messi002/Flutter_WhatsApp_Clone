import 'package:flutter/material.dart';

import '../../../app_colors.dart';

class BottomChatField extends StatefulWidget {
  const BottomChatField({
    super.key,
  });

  @override
  State<BottomChatField> createState() => _BottomChatFieldState();
}

class _BottomChatFieldState extends State<BottomChatField> {
  bool isShowSendButton = false;
  late final TextEditingController bottomTextController;

  @override
  void initState() {
    super.initState();
    bottomTextController = TextEditingController();
  }

  @override
  void dispose() {
    bottomTextController.dispose();
    super.dispose();
  }

  @override
 
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.appBarColor,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: SizedBox(
                  child: Row(
                    children: [
                      IconButton(
                        // splashColor: Colors.transparent,
                        splashRadius: 30,
                        onPressed: () {},
                        icon: Icon(
                          Icons.emoji_emotions,
                          color: Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.gif,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              suffixIcon: SizedBox(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.attach_file_rounded,
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.photo_camera,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              hintText: 'Message',
              // hintStyle:
              //     TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(width: 0, style: BorderStyle.none),
              ),
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 8,
            right: 2,
            left: 2,
          ),
          child: CircleAvatar(
            backgroundColor: const Color(0xFF128C7E),
            child: Icon(
              isShowSendButton ? Icons.send : Icons.mic,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
