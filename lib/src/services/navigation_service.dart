import 'package:alma/src/models/assignment/assignment.dart';
import 'package:alma/src/models/classroom/classroom.dart';
import 'package:alma/src/repositories/assignment_repository.dart';
import 'package:alma/src/repositories/class_room_repository.dart';

class NavigationService {
  NavigationService(
      {required ClassRoomRepository classRoomRepository, required AssignmentRepository assignmentRepository})
      : _classRoomRepository = classRoomRepository,
        _assignmentRepository = assignmentRepository;

  final ClassRoomRepository _classRoomRepository;
  final AssignmentRepository _assignmentRepository;

  /// Check if the next step in the speficied class is an assignment
  /// Return [true] when is an assignment and false otherwise
  bool hasAssignmentToDo(int classRoomId) {
    return _assignmentRepository.hasAssignment(classRoomId);
  }

  List<Assignment> getAssignments(int classRoomId) {
    return _assignmentRepository.getAssignments(classRoomId);
  }

  List<ClassRoom>? getClasses(String blockId) {
    return _classRoomRepository.getClassesByBlock(blockId);
  }

  Assignment? getNextAssignments(int classRoomId) {
    return _assignmentRepository.getNextAssignment(classRoomId);
  }
}
