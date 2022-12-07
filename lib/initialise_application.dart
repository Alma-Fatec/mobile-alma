import 'package:alma/initialise_class_block.dart';
import 'package:alma/src/blocs/application_bloc/application_bloc.dart';
import 'package:alma/src/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialiseApplication extends StatelessWidget {
  const InitialiseApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ApplicationBloc>(context).add(const Initialise());
    return BlocListener<ApplicationBloc, ApplicationState>(
      listener: (context, state) {
        if (state.isInitialised ?? false) {
          Navigator.pushNamedAndRemoveUntil(context, InitialiseClassBlock.route, (_) => false);
          return;
        }

        Navigator.pushNamedAndRemoveUntil(context, LoginPage.route, (_) => false);
      },
      child: const SplashScreen(),
    );
  }
}
