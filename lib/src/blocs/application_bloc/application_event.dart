part of 'application_bloc.dart';

@freezed
class ApplicationEvent with _$ApplicationEvent {
  const factory ApplicationEvent.initialise() = Initialise;
  const factory ApplicationEvent.login(String email, String password) = Login;
  const factory ApplicationEvent.signup({required User user}) = Signup;
}