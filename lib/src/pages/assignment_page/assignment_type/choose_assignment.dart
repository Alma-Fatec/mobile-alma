import 'package:alma/src/blocs/assignment_bloc/assignment_bloc.dart';
import 'package:alma/src/models/assignment/assignment.dart';
import 'package:alma/src/utils/colors.dart';
import 'package:alma/src/utils/snackbar.dart';
import 'package:alma/src/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseAssignment extends StatelessWidget {
  const ChooseAssignment({Key? key, required this.assignment}) : super(key: key);

  final Assignment assignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ChooseCard(
          assignmentId: assignment.id!,
          title: 'ANJO',
          subtitle: 'anjo',
          imagePath: 'assets/images/anjo.png',
          isCorrect: true,
        ),
        const SizedBox(width: 16),
        ChooseCard(
          assignmentId: assignment.id!,
          title: 'CRUZ',
          subtitle: 'cruz',
          imagePath: 'assets/images/cruz.png',
        ),
      ],
    );
  }
}

class ChooseCard extends StatelessWidget {
  const ChooseCard({Key? key, required this.assignmentId, required this.title, required this.subtitle, required this.imagePath, this.isCorrect})
      : super(key: key);

  final int assignmentId;
  final String title;
  final String subtitle;
  final String imagePath;
  final bool? isCorrect;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isCorrect ?? false) {
          context.read<AssignmentBloc>().add(CheckAsDone(assignmentId: assignmentId));
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
