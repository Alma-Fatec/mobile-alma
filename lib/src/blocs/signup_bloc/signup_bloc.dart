import 'package:alma/src/models/models.dart';
import 'package:alma/src/services/user_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_event.dart';
part 'singup_state.dart';
part 'signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc({required this.userService}) : super(const SignupState.initial()) {
    on<SignUp>(_mapSingupToState);
  }

  final UserService userService;

  Future<void> _mapSingupToState(SignUp event, Emitter<SignupState> emit) async {
    try {
      emit(const Loading());
      await userService.signup(event.user!);
      emit(const Success());
    } catch (e) {
      emit(const Error('Falha ao realizar cadastro'));
    }
  }
}
