import 'package:alma/pages/home_page/widgets/aulas_recentes_fields.dart';
import 'package:alma/pages/home_page/widgets/bloco_aula_field.dart';
import 'package:alma/pages/home_page/widgets/home_bottom_navigation.dart';
import 'package:alma/widgets/custom_text.dart';
import 'package:alma/widgets/custom_body.dart';
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
      ),
      body: CustomBody(
        topMargin: 0,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 42),
              BlocoAulaField(),
              SizedBox(height: 39),
              AulasRecentesField(),
            ],
          ),
        ),
      ),
    );
  }
}

