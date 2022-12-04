import 'package:alma/src/models/models.dart';
import 'package:alma/src/repositories/assignment_repository.dart';
import 'package:alma/src/repositories/class_block_repository.dart';
import 'package:alma/src/repositories/class_room_repository.dart';

class ApplicationService {
  ApplicationService({
    required ClassBlockRepository blockRepository,
    required ClassRoomRepository classRoomRepository,
    required AssignmentRepository assignmentRepository,
  })  : _blockRepository = blockRepository,
        _classRoomRepository = classRoomRepository,
        _assignmentRepository = assignmentRepository;

  final ClassBlockRepository _blockRepository;
  final ClassRoomRepository _classRoomRepository;
  final AssignmentRepository _assignmentRepository;

  Future<ClassBlock?> fetchClasses(String userId, int currentBlockIndex) async {
    final classblocks = await _blockRepository.getClassBlockByStudent(userId);

    if (classblocks == null || classblocks.isEmpty) {
      return null;
    }

    final classes = await _classRoomRepository.getClassRoomByBlockId(classblocks[currentBlockIndex].id!);
    if (classes == null || classes.isEmpty) {
      return null;
    }

    for (final classroom in classes) {
      await _assignmentRepository.getAssignmentByClass(classroom.id!);
    }
    return classblocks[currentBlockIndex];
  }

  List<ClassRoom> getClassesByBlock(String blockId) {
    return _classRoomRepository.getClassesByBlock(blockId);
  }
}
