import 'package:alma/pages/home_page/home_page.dart';
import 'package:alma/pages/login_page.dart';
import 'package:alma/pages/splash_page.dart';
import 'package:alma/repositories/class_block_repository.dart';
import 'package:alma/services/classblock_service.dart';
import 'package:alma/utils/colors.dart';
import 'package:alma/utils/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AlmaApp extends StatelessWidget {
  const AlmaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final classblockService = ClassblockService(classBlockRepository: ClassBlockRepository());

    return MultiProvider(
      providers: [
        Provider<ClassblockService>.value(value: classblockService),
      ],
      child: MaterialApp(
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
        home: FutureBuilder<bool>(
          future: SharedPref().constain("tokenSession"),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const SplashScreen();
            }
    
            return snapshot.data ?? false ? const HomePage() : const LoginPage();
          },
        ),
      ),
    );
  }
}
