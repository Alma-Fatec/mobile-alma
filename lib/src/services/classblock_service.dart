import 'package:alma/src/models/models.dart';
import 'package:alma/src/repositories/class_block_repository.dart';

class ClassblockService {
  ClassblockService({required ClassBlockRepository classBlockRepository}) : _classBlockRepository = classBlockRepository;

  final ClassBlockRepository _classBlockRepository;
  
  Future<ClassBlock> getClassBlockByStudent() async {
    return await _classBlockRepository.getClassBlockByStudent();
  }

  Future<List<ClassBlock>> getAllClassBlock() async {
    return await _classBlockRepository.getAllClassBlock();
  }
}