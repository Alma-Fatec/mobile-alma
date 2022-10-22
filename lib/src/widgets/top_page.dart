import 'package:alma/src/utils/colors.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Stack(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(173.0),
                ),
                child: Image.asset(
                  'assets/images/classroom.jpg',
                  height: 350,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AlmaColors.whiteAlma.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(173.0),
                  ),
                ),
              ),
            ],
          ),
          Center(
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
        ],
      ),
    );
  }
}
