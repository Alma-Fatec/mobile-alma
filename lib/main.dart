import 'package:alma/pages/home/home_page.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        primaryColor: Colors.lightBlue,
      ),
      home: const HomePage(),
    );
  }
}
