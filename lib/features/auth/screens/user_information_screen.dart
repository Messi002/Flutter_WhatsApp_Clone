import 'dart:io';

import 'package:flutter/material.dart';

import '../../../common/utils/utils.dart';

class UserInformationScreen extends StatefulWidget {
  static const routeName = '/user-info-screen';
  const UserInformationScreen({super.key});

  @override
  State<UserInformationScreen> createState() => _UserInformationScreenState();
}

class _UserInformationScreenState extends State<UserInformationScreen> {
  late final TextEditingController nameController;
  File? image;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  void selectImage() async {
    image = await pickImageFromGallery(context);
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Stack(
              children: [
                image == null
                    ? const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://media.istockphoto.com/id/1370481100/photo/the-rabbit.jpg?b=1&s=170667a&w=0&k=20&c=RRWCO8rA35DL_pWrlU8F0whOqoZgrEGJQdPGhK2aH1o='),
                        radius: 64,
                      )
                    : CircleAvatar(
                        backgroundImage: FileImage(image!),
                        radius: 64,
                      ),
                Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                        onPressed: selectImage,
                        icon: const Icon(Icons.add_a_photo))),
              ],
            ),
            Row(
              children: [
                Container(
                  width: size.width * 0.85,
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    controller: nameController,
                    decoration:
                        const InputDecoration(hintText: 'Enter your name'),
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.done))
              ],
            ),
          ],
        ),
      )),
    );
  }
}


//2 : 10 : 25