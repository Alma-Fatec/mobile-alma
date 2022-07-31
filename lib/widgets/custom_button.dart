import 'package:alma/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.child,
    required this.showProgress,
    this.color,
    this.elevation,
    this.width,
    this.height,
  }) : super(key: key);

  final Function onPressed;
  final Widget child;
  final Color? color;
  final double? elevation;
  final double? width;
  final double? height;
  final bool showProgress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.of(context).size.width,
      height: height ?? 40,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        child: showProgress
            ? const SizedBox(
                height: 25,
                width: 25,
                child: CircularProgressIndicator(
                  color: AlmaColors.whiteAlma,
                ),
              )
            : child,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            color ?? AlmaColors.blueAlma,
          ),
          elevation: MaterialStateProperty.all(elevation),
        ),
      ),
    );
  }
}
