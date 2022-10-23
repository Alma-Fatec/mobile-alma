import 'package:alma/src/models/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_event.freezed.dart';

@freezed
class ApplicationEvent with _$ApplicationEvent {
  const factory ApplicationEvent.initialise() = Initialise;
  const factory ApplicationEvent.login(String email, String password) = Login;
  const factory ApplicationEvent.signup({required User user}) = Signup;
}