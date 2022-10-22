import 'package:alma/utils/colors.dart';
import 'package:alma/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AlmaColors.grayBackgroundAlma,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo_alma.png'),
            const SizedBox(height: 10),
            const CustomText(
              text: 'ALMA',
              color: AlmaColors.darkBlueAlma,
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
            const CustomText(
              text: 'Alfabetização Móvel para Adultos',
              color: AlmaColors.darkBlueAlma,
              fontSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}
