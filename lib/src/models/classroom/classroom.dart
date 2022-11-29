import 'package:alma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'classroom.g.dart';

@JsonSerializable()
class ClassRoom {
  int? id;
  String? name;
  String? description;
  int? order;
  String? cover;
  List<Lesson>? lesson;

  ClassRoom({
    this.id,
    this.name,
    this.description,
    this.order,
    this.cover,
    this.lesson,
  });

  factory ClassRoom.fromJson(Map<String, dynamic> json) => _$ClassRoomFromJson(json);

  Map<String, dynamic> toJson() => _$ClassRoomToJson(this);
}
