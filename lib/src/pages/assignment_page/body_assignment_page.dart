import 'package:alma/src/models/assignment/assignment.dart';
import 'package:alma/src/models/assignment/assignment_type.dart';
import 'package:alma/src/pages/assignment_page/assignment_type/choose_assignment.dart';
import 'package:alma/src/pages/assignment_page/assignment_type/write_assignment.dart';
import 'package:alma/src/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class BodyAssignmentPage extends StatelessWidget {
  const BodyAssignmentPage({Key? key, this.onAnswerUpdated, required this.assignment}) : super(key: key);

  final void Function(bool? isCorrect)? onAnswerUpdated;
  final Assignment assignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: assignment.title!,
          fontFamily: "Montserrat",
          fontSize: 18,
          fontWeight: FontWeight.w900,
          color: Colors.black,
        ),
        const SizedBox(height: 8),
        CustomText(
          text: assignment.description!,
          fontFamily: "Montserrat",
          fontSize: 18,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 36),
        assignment.kind == AssignmentType.DIGITACAO
            ? WriteAssignment(
                onAnswerUpdated: onAnswerUpdated!,
                assignment: assignment,
              )
            : const ChooseAssignment(),
      ],
    );
  }
}
