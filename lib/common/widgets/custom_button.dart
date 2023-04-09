import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app_colors.dart';

class CustomButton extends StatelessWidget {
  String text;
  VoidCallback onPressed;
  CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(color: AppColors.blackColor),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.tabColor,
        minimumSize: const Size(double.infinity, 50),
      ),
    );
  }
}
