import 'package:alma/src/models/models.dart';
import 'package:alma/src/repositories/class_block_repository.dart';
import 'package:alma/src/repositories/class_room_repository.dart';

class ClassblockService {
  ClassblockService({
    required ClassBlockRepository classBlockRepository,
    required ClassRoomRepository classRoomRepository,
  }) : _classBlockRepository = classBlockRepository, _classRoomRepository = classRoomRepository;

  final ClassBlockRepository _classBlockRepository;
  final ClassRoomRepository _classRoomRepository;

  Future<List<ClassBlock>> getClassBlockByStudent(String userId) async {
    return await _classBlockRepository.getClassBlockByStudent(userId);
  }

  Future<List<ClassRoom>> getClassRoomByBlockId(String blockId) async {
    return await _classRoomRepository.getClassRoomByBlockId(blockId);
  }
}
