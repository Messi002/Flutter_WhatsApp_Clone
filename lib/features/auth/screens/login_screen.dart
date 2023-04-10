import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/app_colors.dart';
import 'package:whatsapp_clone/common/utils/utils.dart';
import 'package:whatsapp_clone/features/auth/controllers/auth_controller.dart';

import '../../../common/widgets/custom_button.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static const routeName = '/login-screen';
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  late final TextEditingController phoneController;
  Country? country;

  @override
  void initState() {
    super.initState();
    phoneController = TextEditingController();
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  void pickCountry() {
    showCountryPicker(
        context: context,
        onSelect: (Country _country) {
          setState(() {
            country = _country;
          });
        });
  }

  void sendPhoneNumber() {
    String phoneNumber = phoneController.text.trim();
    if (country != null && phoneNumber.isNotEmpty) {
      ref
          .read(authControllerProvider)
          .signInWithPhone(context, '+${country!.phoneCode}$phoneNumber');
    } else {
      showSnackBar(
          context: context,
          content:
              'Please select a country and also fill out your phone number');
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Enter your phone number'),
        backgroundColor: AppColors.backgroundColor,
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: 18,
            right: 18,
            bottom: MediaQuery.of(context).viewPadding.bottom + 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('WhatsApp will need to verify your phone number'),
            const SizedBox(height: 10),
            TextButton(
                onPressed: pickCountry, child: const Text('Pick country')),
            const SizedBox(height: 10),
            Row(
              children: [
                if (country != null) Text('+${country!.phoneCode}'),
                const SizedBox(width: 5),
                SizedBox(
                  width: size.width * 0.7,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    controller: phoneController,
                    decoration: InputDecoration(hintText: 'phone number'),
                  ),
                ),
              ],
            ),
            // SizedBox(height: size.height * 0.6),
            Spacer(),
            SizedBox(
              width: 90,
              child: CustomButton(
                text: 'NEXT',
                onPressed: sendPhoneNumber,
              ),
            )
          ],
        ),
      ),
    );
  }
}
