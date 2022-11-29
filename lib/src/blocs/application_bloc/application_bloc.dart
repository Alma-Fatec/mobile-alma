import 'dart:async';

import 'package:alma/src/models/box/user_stats_metadata.dart';
import 'package:alma/src/models/models.dart';
import 'package:alma/src/services/user_service.dart';
import 'package:alma/src/utils/shared_pref.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_event.dart';
part 'application_state.dart';
part 'application_bloc.freezed.dart';

class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  ApplicationBloc({
    required this.userService,
  }) : super(ApplicationState()) {
    on<ApplicationEvent>(_onEvent);
  }

  final UserService userService;

  Future<void> _onEvent(ApplicationEvent event, Emitter<ApplicationState> emit) async {
    if (event is Initialise) {
      await _mapInitialiseToState(event, emit);
    } else if (event is SaveCurrentUser) {
      await _mapSaveCurrentUserToState(event, emit);
    }
  }

  Future<void> _mapInitialiseToState(Initialise event, Emitter<ApplicationState> emit) async {
    final pref = SharedPref();
    final hasToken = await pref.constain('token');
    final currentUser = await pref.read('currentUser');
    emit(state.copyWith(isInitialised: hasToken, currentUser: currentUser));
  }

  Future<void> _mapSaveCurrentUserToState(SaveCurrentUser event, Emitter<ApplicationState> emit) async {
    emit(state.copyWith(currentUser: event.user));
    await SharedPref().save('currentUser', event.user!.toJson());
  }
}
