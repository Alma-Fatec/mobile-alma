import 'package:alma/src/api/alma_api.dart';
import 'package:alma/src/models/models.dart';

class ClassRoomRepository {
  ClassRoomRepository({required this.api});

  final AlmaApi api;

  Future<List<ClassRoom>> getClassRoomByBlockId(String blockId) async {
    return (await api.getClassesByBlockIdPaginated(ClassesByBlockIdPaginated(page: 1, limit: 1, blockId: blockId)))
        .data!;
  }
}
