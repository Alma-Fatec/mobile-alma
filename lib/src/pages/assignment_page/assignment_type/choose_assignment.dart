import 'package:alma/src/utils/colors.dart';
import 'package:alma/src/utils/snackbar.dart';
import 'package:alma/src/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ChooseAssignment extends StatelessWidget {
  const ChooseAssignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        ChooseCard(
          title: 'ANJO',
          subtitle: 'anjo',
          imagePath: 'assets/images/anjo.png',
          isCorrect: true,
        ),
        SizedBox(width: 16),
        ChooseCard(
          title: 'CRUZ',
          subtitle: 'cruz',
          imagePath: 'assets/images/cruz.png',
        ),
      ],
    );
  }
}

class ChooseCard extends StatelessWidget {
  const ChooseCard({Key? key, required this.title, required this.subtitle, required this.imagePath, this.isCorrect})
      : super(key: key);

  final String title;
  final String subtitle;
  final String imagePath;
  final bool? isCorrect;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isCorrect ?? false) {
          // push(context, TaskPage(type: AssignmentType.DIGITACAO));
          return;
        }

        showSnackbar(context, 'Alternativa errada');
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            children: [
              CustomText(
                text: title,
                fontFamily: 'Montserrat',
                fontSize: 36,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 4),
              CustomText(
                text: subtitle,
                fontFamily: 'Montserrat',
                fontSize: 32,
                fontWeight: FontWeight.w500,
                color: AlmaColors.blueAlma,
              ),
              const SizedBox(height: 4),
              Image.asset(
                imagePath,
                width: 100,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
