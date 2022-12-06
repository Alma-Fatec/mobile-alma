import 'package:alma/src/models/box/box.dart';
import 'package:alma/src/models/box/option_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class AssignmentBox {
  AssignmentBox({
    this.id,
    this.assignmentId,
    this.title,
    this.description,
    this.file,
    this.answer,
    this.hiddenText,
    this.kind,
    this.classes,
    this.options,
  });

  int? id;
  int? assignmentId;
  String? title;
  String? description;
  String? file;
  String? answer;
  String? hiddenText;
  String? kind;
  bool? done;
  List<ClassRoomBox>? classes;
  List<OptionBox>? options;
}
