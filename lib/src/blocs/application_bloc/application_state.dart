import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_state.freezed.dart';

@freezed
class ApplicationState with _$ApplicationState {
  const factory ApplicationState.initial() = Initial;
  const factory ApplicationState.success() = Success;
  const factory ApplicationState.error(String message) = Error;
}
