part of 'application_bloc.dart';

@freezed
class ApplicationState with _$ApplicationState {
  const factory ApplicationState.initial() = Initial;
  const factory ApplicationState.success() = Success;
  const factory ApplicationState.error(String message) = Error;
}
