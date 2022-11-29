import 'package:alma/src/pages/home_page/widgets/aulas_recentes_fields.dart';
import 'package:alma/src/pages/home_page/widgets/bloco_aula_field.dart';
import 'package:alma/src/pages/home_page/widgets/home_bottom_navigation.dart';
import 'package:alma/src/pages/login.dart';
import 'package:alma/src/utils/nav.dart';
import 'package:alma/src/widgets/custom_text.dart';
import 'package:alma/src/widgets/custom_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const HomeBottomNavigation(),
      appBar: AppBar(
        title: Container(
          margin: const EdgeInsets.only(left: 32),
          child: const CustomText(
            text: 'Início',
            fontFamily: "Montserrat",
            fontSize: 18,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => push(context, const LoginPage()),
            icon: const Icon(Icons.logout_rounded),
          ),
        ],
      ),
      body: CustomBody(
        topMargin: 0,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 42),
              Center(child: BlocoAulaField()),
              const SizedBox(height: 39),
              const AulasRecentesField(),
            ],
          ),
        ),
      ),
    );
  }
}
