part of 'application_bloc.dart';

@freezed
class ApplicationState with _$ApplicationState {
  factory ApplicationState({
    @Default(null) User? currentUser,
    @Default(false) bool? isInitialised,
  }) = _ApplicationState;

  ApplicationState._();
}
