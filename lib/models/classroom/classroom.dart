import 'package:alma/models/lesson/lesson.dart';
import 'package:json_annotation/json_annotation.dart';
part 'classroom.g.dart';

@JsonSerializable()
class ClassRoom {
  int? id;
  String? title;
  String? description;
  int? sequence;
  String? file;
  List<Lesson>? lesson;

  ClassRoom({
    this.id,
    this.title,
    this.description,
    this.sequence,
    this.file,
    this.lesson,
  });

  factory ClassRoom.fromJson(Map<String, dynamic> json) => _$ClassRoomFromJson(json);

  Map<String, dynamic> toJson() => _$ClassRoomToJson(this);
}
