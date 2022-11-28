import 'dart:async';

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
  }) : super(const ApplicationState.initial()) {
    on<ApplicationEvent>(_onEvent);
  }

  final UserService userService;

  Future<void> _onEvent(ApplicationEvent event, Emitter<ApplicationState> emit) async {
    if (event is Initialise) {
      await _mapInitialiseToState(event, emit);
    } 
  }

  Future<void> _mapInitialiseToState(Initialise event, Emitter<ApplicationState> emit) async {
    final hasToken = await SharedPref().constain('token');
    if (!hasToken) {
      emit(const Error('Login is needed'));
      return;
    }

    emit(const Success());
  }
}
