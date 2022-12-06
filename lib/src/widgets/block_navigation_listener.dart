import 'package:alma/speaker_controller.dart';
import 'package:alma/src/blocs/application_bloc/application_bloc.dart';
import 'package:alma/src/blocs/assignment_bloc/assignment_bloc.dart';
import 'package:alma/src/blocs/navigation_bloc/navigation_bloc.dart';
import 'package:alma/src/pages/pages.dart';
import 'package:alma/src/utils/nav.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A listener to resolve the navigation inside the class block
/// Only can be called once time in a widget stack tree
class BlockNavigationListener extends StatefulWidget {
  const BlockNavigationListener({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  State<BlockNavigationListener> createState() => _BlockNavigationListenerState();
}

class _BlockNavigationListenerState extends State<BlockNavigationListener> {
  AssetsAudioPlayer _player = AssetsAudioPlayer();
  late AudioSpeakerController _audioController;

  @override
  void initState() {
    super.initState();
    _audioController = context.read<AudioSpeakerController>();
    _audioController.addListener(_controlAudio);
  }

  void _controlAudio() {
    final control = _audioController.value;
    if (control.file != null && control.file != '') {
      _player = AssetsAudioPlayer();
      _player.open(
        Audio.network(control.file!, cached: true, metas: Metas(title: 'ALMA')),
        showNotification: true,
        volume: 1.0,
      );
      _player.play();
    }

    if (control.replay ?? false) {
      _player.play();
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        _buildBlockRouteListener(),
        _buildAssignmentListener(),
      ],
      child: widget.child,
    );
  }

  BlocListener<AssignmentBloc, AssignmentState> _buildAssignmentListener() {
    return BlocListener<AssignmentBloc, AssignmentState>(
      listener: (context, state) {
        if (state is Checked) {
          final blockId = context.read<ApplicationBloc>().state.currentBlock?.id;
          context.read<NavigationBloc>().add(LoadResults(blockId: blockId ?? ''));
        }
      },
    );
  }

  BlocListener<NavigationBloc, NavigationState?> _buildBlockRouteListener() {
    return BlocListener(listener: (context, state) {
      if (state is ClassRoomLoaded) {
        Navigation.toClasses(context, state.classRoom);
      } else if (state is AssignmentLoaded) {
        Navigation.toAssignment(context, state.assignment);
      } else if (state is Ended) {
        Navigator.pushNamedAndRemoveUntil(context, FinishedPage.route, (_) => false);
      }
    });
  }

  @override
  void dispose() {
    _audioController.removeListener(_controlAudio);
    super.dispose();
  }
}
