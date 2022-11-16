import 'package:alma/src/utils/colors.dart';
import 'package:alma/src/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  final String? label;
  final String? hint;
  final TextEditingController? textEditingController;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final Icon? suffixIcon;
  final bool obscureText;
  final int? maxLength;
  final Function(String?)? onChanged;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextFormField({
    Key? key,
    @required this.label,
    @required this.hint,
    this.textEditingController,
    this.validator,
    this.keyboardType,
    this.suffixIcon,
    this.obscureText = false,
    this.maxLength,
    this.onChanged,
    this.inputFormatters
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: label ?? "Undefined",
          color: AlmaColors.whiteAlma,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins",
        ),
        const SizedBox(height: 8),
        TextFormField(
          inputFormatters: inputFormatters,
          maxLength: maxLength,
          controller: textEditingController,
          validator: validator,
          onChanged: onChanged,
          decoration: InputDecoration(
            filled: true,
            fillColor: AlmaColors.whiteAlma,
            hintStyle: const TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xFF717171)
            ),
            hintText: hint,
            border: InputBorder.none,
            suffixIcon: suffixIcon,
          ),
          keyboardType: keyboardType,
          obscureText: obscureText,
        ),
      ],
    );
  }
}
