import 'package:alma/src/repositories/assignment_repository.dart';

class AssignmentService {
  AssignmentService({required AssignmentRepository assignmentRepository})
      : _assignmentRepository = assignmentRepository;

  final AssignmentRepository _assignmentRepository;

  void checkAsDone(int assignmentId) {
    _assignmentRepository.checkAsDone(assignmentId);
  }
}
