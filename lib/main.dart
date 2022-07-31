import 'package:alma/pages/login_page.dart';
import 'package:alma/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alma',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AlmaColors.blueAlma,
        scaffoldBackgroundColor: AlmaColors.whiteAlma,
        appBarTheme: const AppBarTheme(
          toolbarHeight: 70,
          backgroundColor: AlmaColors.blueAlma,
          centerTitle: false,
          elevation: 0,
          shape: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
            ),
          ),
        ),
      ),
      // TODO: Add Splash feature here
      home: const LoginPage(),
    );
  }
}
