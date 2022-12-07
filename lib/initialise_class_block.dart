import 'package:alma/src/blocs/classblock_bloc/classblock_bloc.dart';
import 'package:alma/src/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InitialiseClassBlock extends StatelessWidget {
  const InitialiseClassBlock({Key? key}) : super(key: key);

  static const String route = '/classblock-init';

  @override
  Widget build(BuildContext context) {
    return BlocListener<ClassBlockBloc, ClassblockState>(
      bloc: context.read<ClassBlockBloc>()..add(const Init()),
      listener: (context, state) {
        if (state.currentBlock != null) {
          Navigator.pushNamedAndRemoveUntil(context, HomePage.route, (route) => false);
        }

        if (!state.isLoading! && state.isError!) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Erro ao carregar informações, tente novamente mais tarde!')),
          );
        }
      },
      child: const SplashScreen(),
    );
  }
}
