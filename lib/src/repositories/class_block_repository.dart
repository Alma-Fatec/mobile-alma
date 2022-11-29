import 'package:alma/src/api/alma_api.dart';
import 'package:alma/src/models/models.dart';

class ClassBlockRepository {
  ClassBlockRepository({required this.api});

  final AlmaApi api;

  Future<List<ClassBlock>> getClassBlockByStudent(String userId) async {
    return (await api.getClassesBlockByStudentPaginated(
      ClassesBlockByStudentsPaginated(page: 1, limit: 6, userId: userId),
    ))
        .data!;
  }
}
