import 'dart:async';

import 'package:alma/src/blocs/application_bloc/application_event.dart';
import 'package:alma/src/blocs/application_bloc/application_state.dart';
import 'package:alma/src/services/user_service.dart';
import 'package:alma/src/utils/shared_pref.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    } else if (event is Login) {
      await _mapLoginToState(event, emit);
    } else if (event is Signup) {
      await _mapSingupToState(event, emit);
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

  Future<void> _mapLoginToState(Login event, Emitter<ApplicationState> emit) async {
    try {
      await userService.login(event.email, event.password);
      emit(const Success());
    } catch (e) {
      emit(const Error('Falha na tentativa de login'));
    }
  }

  Future<void> _mapSingupToState(Signup event, Emitter<ApplicationState> emit) async {
    try {
      await userService.signup(event.user);
      emit(const Success());
    } catch (e) {
      emit(const Error('Falha ao realizar cadastro'));
    }
  }
}
