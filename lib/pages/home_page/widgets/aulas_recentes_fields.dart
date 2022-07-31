import 'package:alma/utils/colors.dart';
import 'package:alma/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class AulasRecentesField extends StatelessWidget {
  const AulasRecentesField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: "Aulas recentes",
          fontFamily: "Montserrat",
          fontSize: 16,
          fontWeight: FontWeight.w900,
          color: AlmaColors.secondaryTextColorAlma,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          height: 130,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: ((context, index) {
              return Container(
                width: 134,
                height: 130,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset("assets/images/numerais.jpg"),
              );
            }),
            separatorBuilder: (context, index) => const SizedBox(width: 16),
          ),
        )
      ],
    );
  }
}
