part of 'assignment_bloc.dart';

@freezed
class AssignmentEvent with _$AssignmentEvent {
  const factory AssignmentEvent.checkAsDone({required int assignmentId}) = CheckAsDone;
}