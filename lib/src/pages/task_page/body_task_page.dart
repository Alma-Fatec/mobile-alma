import 'package:alma/src/pages/task_page/tasks/choose_task.dart';
import 'package:alma/src/pages/task_page/tasks/write_task.dart';
import 'package:alma/src/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class BodyTaskPage extends StatelessWidget {
  const BodyTaskPage({Key? key, required this.type, this.onAnswerUpdated}) : super(key: key);

  final String type;
  final void Function(bool? isCorrect)? onAnswerUpdated;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: 'Praticando o alfabeto',
          fontFamily: "Montserrat",
          fontSize: 18,
          fontWeight: FontWeight.w900,
          color: Colors.black,
        ),
        const SizedBox(height: 8),
        const CustomText(
          text: 'Qual das duas palavras começa com a letra A? Clique sobre ela.',
          fontFamily: "Montserrat",
          fontSize: 18,
          fontWeight: FontWeight.w600,
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: 36),
        type == 'write'
            ? WriteTask(onAnswerUpdated: (answer) {
                onAnswerUpdated!(answer);
              })
            : const ChooseTask(),
      ],
    );
  }
}
