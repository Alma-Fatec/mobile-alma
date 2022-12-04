import 'package:alma/src/api/alma_api.dart';
import 'package:alma/src/models/models.dart';
import 'package:alma/src/utils/objectbox.dart';

class ClassBlockRepository {
  ClassBlockRepository({required this.api, required this.boxProvider});

  final AlmaApi api;
  final ObjectBoxProvider boxProvider;

  Future<List<ClassBlock>?> getClassBlockByStudent(String userId) async {
    final result = await api.getClassesBlockByStudentPaginated(
      ClassesBlockByStudentsPaginated(page: 1, limit: 1, userId: userId),
    );

    if (result.data?.isNotEmpty ?? false) {
      saveLocalClassesBlock(result.data!);
    }

    return result.data;
  }

  ClassBlock getCurrentClassBlock() {
    return ClassBlock.fromBox(boxProvider.getClassBlockBox().getAll().first);
  }

  void saveLocalClassesBlock(List<ClassBlock> blocks) {
    final boxes = blocks.map((block) => block.toBox()).toList();

    final cached = boxProvider.getClassBlockBox().getAll();

    for (final box in boxes) {
      final existing = cached.any((cache) => cache.id == box.id);

      if (existing) {
        final existed = cached.firstWhere((cache) => cache.id == box.id);
        box.id = existed.id;
      }
    }

    boxProvider.getClassBlockBox().putMany(boxes);
  }
}
