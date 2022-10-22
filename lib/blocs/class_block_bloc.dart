import 'package:alma/models/class_block/class_block.dart';
import 'package:alma/repositories/class_block_repository.dart';

class ClassBlockBloc {
  Future<ClassBlock?>? getClassBlockByStudent() async {
    try {
      ClassBlockRepository repository = ClassBlockRepository();
      return await repository.getClassBlockByStudent();
    } catch (e) {
      // TODO: Tratar erro
      return null;
    }
  }
}
