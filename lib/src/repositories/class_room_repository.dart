import 'package:alma/src/api/alma_api.dart';
import 'package:alma/src/models/models.dart';
import 'package:alma/src/utils/objectbox.dart';
import 'package:collection/collection.dart';

class ClassRoomRepository {
  ClassRoomRepository({required this.api, required this.boxProvider});

  final AlmaApi api;
  final ObjectBoxProvider boxProvider;

  Future<List<ClassRoom>?> getClassRoomByBlockId(String blockId) async {
    final result = await api.getClassesByBlockIdPaginated(ClassesByBlockIdPaginated(
      page: 1,
      limit: 10,
      blockId: blockId,
    ));

    if (result.data?.isNotEmpty ?? false) {
      saveLocalClassRoom(result.data!);
    }

    return result.data;
  }

  List<ClassRoom> getClassesByBlock(String blockId) {
    final boxes = boxProvider.getClassRoomBox().getAll();
    return boxes.map(ClassRoom.fromBox).toList();
  }

  void saveLocalClassRoom(List<ClassRoom> classes) {
    final boxes = classes.map((classroom) => classroom.toBox()).toList();

    final cached = boxProvider.getClassRoomBox().getAll();

    for (final box in boxes) {
      final existed = cached.firstWhereOrNull((cache) => cache.classRoomId == box.classRoomId);

      if (existed != null) {
        box.id = existed.id;
      }
    }

    boxProvider.getClassRoomBox().putMany(boxes);
  }
}
