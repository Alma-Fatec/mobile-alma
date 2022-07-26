import 'package:alma/widgets/CustomText.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(text: 'Dashboard'),
      ),
      body: const Center(
          child: CustomText(
        text: "Dashboard",
      )),
    );
  }
}
