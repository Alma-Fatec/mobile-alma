import 'package:alma/models/classroom/classroom.dart';
import 'package:alma/models/user/User.dart';
import 'package:json_annotation/json_annotation.dart';
part 'class_block.g.dart';

@JsonSerializable()
class ClassBlock {
  int? id;
  String? title;
  String? description;
  int? sequence;
  String? file;
  List<ClassRoom>? classroom;
  List<User>? students;

  ClassBlock({
    this.title,
    this.description,
    this.sequence,
    this.file,
    this.classroom,
    this.students
  });

  factory ClassBlock.fromJson(Map<String, dynamic> json) => _$ClassBlockFromJson(json);

  Map<String, dynamic> toJson() => _$ClassBlockToJson(this);
}