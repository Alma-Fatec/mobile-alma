import 'package:alma/src/models/box/assignment_box.dart';
import 'package:alma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'assignment.g.dart';

@JsonSerializable()
class Assignment {
  Assignment({
    this.id,
    this.title,
    this.description,
    this.file,
    this.answer,
    this.hiddenText,
    this.createdAt,
    this.updatedAt,
    this.kind,
    this.classes,
    this.alternatives,
  });

  factory Assignment.fromJson(Map<String, dynamic> json) => _$AssignmentFromJson(json);

  factory Assignment.fromBox(AssignmentBox box) => Assignment(
        id: box.assignmentId,
        title: box.title,
        description: box.description,
        file: box.file,
        answer: box.answer,
        hiddenText: box.hiddenText,
        kind: box.kind,
      );

  Map<String, dynamic> toJson() => _$AssignmentToJson(this);

  AssignmentBox toBox() => AssignmentBox(
        assignmentId: id,
        title: title,
        description: description,
        file: file,
        answer: answer,
        hiddenText: hiddenText,
        kind: kind,
        classes: classes?.map((e) => e.toBox()).toList(),
      );

  int? id;
  String? title;
  String? description;
  String? file;
  String? answer;
  String? hiddenText;
  String? createdAt;
  String? updatedAt;
  String? kind;

  @JsonKey(name: 'class')
  List<ClassRoom>? classes;
  List<Alternative>? alternatives;
}
