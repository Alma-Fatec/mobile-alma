import 'package:alma/src/models/assignment/assignment.dart';
import 'package:alma/src/widgets/custom_text.dart';
import 'package:alma/src/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class WriteAssignment extends StatelessWidget {
  const WriteAssignment({Key? key, required this.onAnswerUpdated, required this.assignment}) : super(key: key);

  final void Function(bool? isCorrect) onAnswerUpdated;
  final Assignment assignment;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildExampleCard(text1: 'BA', imagePath: 'assets/images/bala.png', text2: 'BALA'),
                const SizedBox(width: 4),
                _buildExampleCard(text1: 'BE', imagePath: 'assets/images/bebe.png', text2: 'BEBÊ'),
                const SizedBox(width: 4),
                _buildExampleCard(text1: 'BI', imagePath: 'assets/images/bife.png', text2: 'BIFE'),
                const SizedBox(width: 4),
                _buildExampleCard(text1: 'BU', imagePath: 'assets/images/bufalo.png', text2: 'BÚFALO'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(36, 8, 36, 8),
            padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomText(
                      text: 'BO',
                      fontFamily: 'Montserrat',
                      fontSize: 48,
                      fontWeight: FontWeight.w500,
                    ),
                    Image.asset(
                      'assets/images/bola.png',
                      width: 70,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 80),
                  child: CustomTextFormField(
                    label: '',
                    hint: 'Digite a palavra',
                    onChanged: (value) => onAnswerUpdated(value?.toLowerCase() == assignment.answer?.toLowerCase()),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExampleCard({required String text1, required String text2, required String imagePath}) {
    return GestureDetector(
      onTap: () => {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 120,
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            children: [
              CustomText(
                text: text1,
                fontFamily: 'Montserrat',
                fontSize: 48,
                fontWeight: FontWeight.w500,
              ),
              const SizedBox(height: 4),
              SizedBox(
                height: 100,
                child: Image.asset(
                  imagePath,
                  width: 70,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 6),
              CustomText(
                text: text2,
                fontFamily: 'Montserrat',
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
