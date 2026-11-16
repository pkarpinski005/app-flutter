import 'package:dsw61956/utils/App_images.dart';
import 'package:dsw61956/utils/app_colors.dart';
import 'package:dsw61956/utils/app_texts.dart';
import 'package:dsw61956/views/widgets/basic_text_from_field.dart';
import 'package:flutter/material.dart';

import '../register/register_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 62),
                Image.asset(AppImages.logo),
                SizedBox(height: 21),
                _signIn,
                SizedBox(height: 46),
                BasicTextFromField(initialValue: 'ttt'),
                SizedBox(height: 40),
                BasicTextFromField(initialValue: 'adsd'),
                ElevatedButton(
                  child: const Text('Open route'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const RegisterView(),
                      ),
                    );
                  },
                ),
                GestureDetector(
                    onTap: () => print('aa'),
                    child: Text(AppTexts.signIn, style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget get _signIn {
  return  Align(
    alignment: .topLeft,
    child: Text(
      AppTexts.signIn,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: AppColors.purpleColor,
      ),
    ),
  );
}