part of 'application_bloc.dart';

@freezed
class ApplicationEvent with _$ApplicationEvent {
  const factory ApplicationEvent.initialise() = Initialise;
  const factory ApplicationEvent.saveCurrentUser({User? user}) = SaveCurrentUser;
}
