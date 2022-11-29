import 'package:alma/src/models/box/class_room_box.dart';
import 'package:alma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'classroom.g.dart';

@JsonSerializable()
class ClassRoom {
  ClassRoom({
    this.id,
    this.name,
    this.description,
    this.order,
    this.cover,
    this.assignment,
  });

  factory ClassRoom.fromJson(Map<String, dynamic> json) => _$ClassRoomFromJson(json);

  factory ClassRoom.fromBox(ClassRoomBox box) => ClassRoom(
        id: box.classRoomId,
        name: box.name,
        description: box.description,
        cover: box.cover,
        order: box.order,
      );

  Map<String, dynamic> toJson() => _$ClassRoomToJson(this);

  int? id;
  String? name;
  String? description;
  int? order;
  String? cover;
  List<Assignment>? assignment;
}
