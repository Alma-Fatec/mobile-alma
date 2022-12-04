part of 'assignment_bloc.dart';

@freezed
class AssignmentState with _$AssignmentState {
  const factory AssignmentState.initial() = Initial;
  const factory AssignmentState.checking() = Checking;
  const factory AssignmentState.checked() = Checked;
}