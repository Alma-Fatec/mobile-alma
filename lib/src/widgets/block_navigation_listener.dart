import 'package:alma/src/blocs/navigation_bloc/navigation_bloc.dart';
import 'package:alma/src/pages/pages.dart';
import 'package:alma/src/utils/nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlockNavigationListener extends StatelessWidget {
  const BlockNavigationListener({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<NavigationBloc, NavigationState>(
      listener: (context, state) {
        if (state is ClassRoomLoaded) {
          Navigation.toClasses(context, state.classRoom);
        } else if (state is AssignmentLoaded) {
          Navigation.toAssignment(context, state.assignment);
        } else if (state is Ended) {
          Navigator.pushNamedAndRemoveUntil(context, FinishedPage.route, (_) => false);
        }
      },
      child: child,
    );
  }
}
