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
                BasicTextFromField(initialValue: 'Email or User Name'),
                SizedBox(height: 40),
                BasicTextFromField(initialValue: 'Password'),
                SizedBox(height: 30,),
                Align(alignment: Alignment.centerRight,
                  child: Text(AppTexts.ForgetPassword, style: TextStyle(fontSize: 20, color: AppColors.purpleColor,fontWeight: FontWeight.w700,)),
                ),
                SizedBox(height: 30,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.pinkColor,
                    minimumSize: const Size(500, 50),
                  )  ,
                  child: const Text('Open route') ,
                  onPressed: () {

                  },
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const RegisterView(),
                        ),
                      );
                    },

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



