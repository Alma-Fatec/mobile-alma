import 'package:alma/utils/colors.dart';
import 'package:flutter/material.dart';

class HomeBottomNavigation extends StatelessWidget {
  const HomeBottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 8.0,
            offset: Offset(0.0, 0.25),
          )
        ],
      ),
      height: 57,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 41.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.font_download,
              color: AlmaColors.darkBlueAlma,
              size: 32,
            ),
            const Icon(
              Icons.lightbulb_circle_sharp,
              color: AlmaColors.blueAlma,
              size: 52,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: AlmaColors.darkBlueAlma,
              ),
              child: const Icon(
                Icons.exposure_zero,
                color: Colors.white,
                size: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
