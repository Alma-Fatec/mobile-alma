import 'package:alma/models/class_block/class_block.dart';
import 'package:alma/repositories/class_block_repository.dart';

class ClassblockService {
  ClassblockService({required ClassBlockRepository classBlockRepository}) : _classBlockRepository = classBlockRepository;

  final ClassBlockRepository _classBlockRepository;
  
  Future<ClassBlock> getClassBlockByStudent() async {
    return _classBlockRepository.getClassBlockByStudent();
  }
}