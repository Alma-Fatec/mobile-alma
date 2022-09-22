import 'package:alma/pages/home_page/home_page.dart';
import 'package:alma/pages/login_page.dart';
import 'package:alma/utils/colors.dart';
import 'package:alma/utils/shared_pref.dart';
import 'package:alma/widgets/custom_text.dart';
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
      home: FutureBuilder<bool>(
        future: SharedPref().constain("tokenSession"),
        builder: (context, snapshot) {

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          }

          return snapshot.data ?? false ? const HomePage() : const LoginPage();
        }
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AlmaColors.grayBackgroundAlma,
      body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo_alma.png'),
                const SizedBox(height: 10),
                const CustomText(
                  text: 'ALMA',
                  color: AlmaColors.darkBlueAlma,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
                const CustomText(
                  text: 'Alfabetização Móvel para Adultos',
                  color: AlmaColors.darkBlueAlma,
                  fontSize: 18,
                ),
              ],
            ),
          ),
    );
  }
}
