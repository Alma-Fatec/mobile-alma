import 'package:alma/utils/colors.dart';
import 'package:alma/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class BlocoAulaField extends StatelessWidget {
  const BlocoAulaField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: "Bloco de aula:",
          fontFamily: "Montserrat",
          fontSize: 16,
          fontWeight: FontWeight.w900,
          color: AlmaColors.secondaryTextColorAlma,
        ),
        Container(
          margin: const EdgeInsets.only(top: 5),
          constraints: const BoxConstraints(
            minWidth: 370,
            minHeight: 295,
          ),
          decoration: BoxDecoration(
              color: AlmaColors.blueAlma,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 0.75),
                )
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: Image.asset(
                  "assets/images/numerais.jpg",
                  height: 250,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 8, left: 8),
                child: const CustomText(
                  text: "Praticando o Alfabeto",
                  fontFamily: "Montserrat",
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: AlmaColors.whiteAlma,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8, bottom: 4),
          child: const CustomText(
            text: "Progresso",
            fontFamily: "Montserrat",
            fontSize: 14,
            fontWeight: FontWeight.w900,
            color: AlmaColors.secondaryTextColorAlma,
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: 128,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(90),
                child: const LinearProgressIndicator(
                  backgroundColor: Colors.white,
                  color: AlmaColors.lightGreenAlma,
                  minHeight: 12,
                  value: 0.3,
                  semanticsValue: "30",
                ),
              ),
            ),
            const SizedBox(width: 4),
            const CustomText(
              text: "30%",
              fontFamily: "Montserrat",
              fontSize: 18,
              fontWeight: FontWeight.w900,
              color: AlmaColors.secondaryTextColorAlma,
            )
          ],
        ),
      ],
    );
  }
}
