import 'package:alma/src/pages/signup_page/signup_form.dart';
import 'package:alma/src/utils/colors.dart';
import 'package:alma/src/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  static const route = '/signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AlmaColors.blueAlma,
      body: Container(
        padding: const EdgeInsets.only(left: 42, right: 42),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [  
              const SizedBox(height: 48),
              const SignupForm(),
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: const CustomText(
                  text: "Já tem uma conta? Faça login",
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: AlmaColors.whiteAlma,
                ),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
