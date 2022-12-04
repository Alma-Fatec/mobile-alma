import 'package:alma/objectbox.g.dart';
import 'package:alma/src/api/alma_api.dart';
import 'package:alma/src/models/box/assignment_box.dart';
import 'package:alma/src/models/models.dart';
import 'package:alma/src/utils/objectbox.dart';
import 'package:collection/collection.dart';

class AssignmentRepository {
  AssignmentRepository({required this.api, required this.boxProvider});

  final AlmaApi api;
  final ObjectBoxProvider boxProvider;

  Future<List<Assignment>?> getAssignmentByClass(int classId) async {
    final result = await api.getAssignmentsByClassIdPaginated(
      AssignmentBlockByClassIdPaginated(page: 1, limit: 6, classId: classId),
    );

    if (result.data?.isNotEmpty ?? false) {
      saveAssignmentLocal(result.data!);
    }

    return result.data;
  }

  void saveAssignmentLocal(List<Assignment> assignments) {
    final boxes = assignments.map((block) => block.toBox()).toList();

    final cached = boxProvider.getAssignmentBox().getAll();

    for (final box in boxes) {
      final existed = cached.firstWhereOrNull((cache) => cache.assignmentId == box.assignmentId);

      if (existed != null) {
        box.id = existed.id;
      }
    }

    boxProvider.getAssignmentBox().putMany(boxes);
  }

  List<Assignment> getAssignments(int classId) {
    final boxes = boxProvider.getAssignmentBox().getAll();
    return boxes.map(Assignment.fromBox).toList();
  }

  Assignment? getNextAssignment(int classId) {
    final boxes = boxProvider.getAssignmentBox().getAll();

    if (!hasAssignment(classId, boxes)) {
      return null;
    }

    for (final box in boxes) {
      if (box.done ?? false) {
        continue;
      }

      if (box.classes?.any((classroom) => classroom.classRoomId == classId) ?? true) {
        return Assignment.fromBox(box);
      }
    }

    return null;
  }

  bool hasAssignment(int classRoomId, [List<AssignmentBox>? cached]) {
    final boxes = cached ?? boxProvider.getAssignmentBox().getAll();
    return boxes.any((box) => !(box.done ?? false));
  }

  void checkAsDone(int assignmentId) {
    final box =
        boxProvider.getAssignmentBox().query(AssignmentBox_.assignmentId.equals(assignmentId)).build().findFirst();

    if (box == null) {
      return;
    }

    boxProvider.getAssignmentBox().remove(box.id!);
    box.done = true;
    boxProvider.getAssignmentBox().put(box);
  }
}
