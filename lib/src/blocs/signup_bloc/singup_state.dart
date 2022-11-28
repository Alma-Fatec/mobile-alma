part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = Initial;
  const factory SignupState.loading() = Loading;
  const factory SignupState.success() = Success;
  const factory SignupState.error(String message) = Error;
}
