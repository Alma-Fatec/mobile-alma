part of 'application_bloc.dart';

@freezed
class ApplicationEvent with _$ApplicationEvent {
  const factory ApplicationEvent.initialise() = Initialise;
  const factory ApplicationEvent.fetch({required String userId}) = Fetch;
  const factory ApplicationEvent.logout() = Logout;
  const factory ApplicationEvent.teste({required String blockId}) = Teste;
}
