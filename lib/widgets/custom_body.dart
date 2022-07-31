import 'package:flutter/material.dart';

class CustomBody extends StatelessWidget {
  final Widget? child;
  final double leftMargin;
  final double righMargin;
  final double topMargin;
  const CustomBody({
    Key? key,
    required final this.child,
    this.leftMargin = 20,
    this.righMargin = 20,
    this.topMargin = 46,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: topMargin, left: leftMargin, right: righMargin),
      child: child,
    );
  }
}
