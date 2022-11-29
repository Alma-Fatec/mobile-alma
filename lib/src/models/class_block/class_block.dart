import 'package:alma/src/models/box/class_block_box.dart';
import 'package:alma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'class_block.g.dart';

@JsonSerializable()
class ClassBlock {
  String? id;
  String? title;
  String? description;
  String? cover;
  String? createdAt;

  @JsonKey(name: 'created_by')
  String? createdBy;

  List<User>? users;

  ClassBlock({this.id, this.title, this.description, this.cover, this.createdAt, this.createdBy, this.users});

  factory ClassBlock.fromJson(Map<String, dynamic> json) => _$ClassBlockFromJson(json);

  factory ClassBlock.fromBox(ClassBlockBox box) => ClassBlock(
        id: box.classBlockId,
        title: box.title,
        description: box.description,
        cover: box.cover,
      );

  Map<String, dynamic> toJson() => _$ClassBlockToJson(this);

  ClassBlockBox toBox() => ClassBlockBox(
        classBlockId: id,
        title: title,
        description: description,
        cover: cover,
      );
}
