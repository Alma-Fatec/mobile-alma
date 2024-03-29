import 'package:alma/src/blocs/application.dart';
import 'package:alma/src/pages/home_page/home_page.dart';
import 'package:alma/src/pages/login.dart';
import 'package:alma/src/pages/splash_page.dart';
import 'package:alma/src/utils/nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialiseApplication extends StatelessWidget {
  const InitialiseApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ApplicationBloc>(context).add(const Initialise());
    return BlocListener<ApplicationBloc, ApplicationState>(
      listener: (context, state) {
        if (state is Success) {
          pushReplace(context, const HomePage(), replace: true);
        }

        if (state is Error) {
          pushReplace(context, const LoginPage(), replace: true);
        }
      },
      child: const SplashScreen(),
    );
  }
}
