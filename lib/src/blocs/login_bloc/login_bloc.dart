import 'package:alma/src/services/user_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required this.userService}) : super(const LoginState.initial()) {
    on<LogIn>(_mapLoginToState);
  }

  final UserService userService;

  Future<void> _mapLoginToState(LogIn event, Emitter<LoginState> emit) async {
    try {
      emit(const Loading());
      await userService.login(event.email, event.password);
      emit(const Success());
    } catch (e) {
      emit(const Error('Falha na tentativa de login'));
    }
  }
}
