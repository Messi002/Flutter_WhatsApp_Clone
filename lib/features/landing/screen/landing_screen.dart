import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app_colors.dart';
import 'package:whatsapp_clone/common/widgets/custom_button.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Welcome to WhatsApp',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 33, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: size.height / 9),
            Image.asset(
              'assets/images/bg.png',
              height: 340,
              width: 340,
              color: AppColors.tabColor,
            ),
            SizedBox(height: size.height / 9),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Read our Privacy Policy. Tap "Agree and continue" to accept the Terms of Service',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.greyColor),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
                width: size.width * 0.75,
                child:
                    CustomButton(text: 'AGREE AND CONTINUE', onPressed: () {}))
          ],
        ),
      ),
    );
  }
}
