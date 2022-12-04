import 'package:alma/src/blocs/application_bloc/application_bloc.dart';
import 'package:alma/src/pages/home_page/aulas_recentes_fields.dart';
import 'package:alma/src/pages/home_page/bloco_aula_field.dart';
import 'package:alma/src/pages/home_page/home_bottom_navigation.dart';
import 'package:alma/src/pages/login.dart';
import 'package:alma/src/widgets/custom_text.dart';
import 'package:alma/src/widgets/custom_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const route = '/home';

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
            onPressed: () {
              BlocProvider.of<ApplicationBloc>(context).add(const Logout());
              Navigator.pushNamedAndRemoveUntil(context, LoginPage.route, (_) => false);
            },
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
