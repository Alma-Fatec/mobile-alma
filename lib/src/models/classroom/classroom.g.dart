// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classroom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassRoom _$ClassRoomFromJson(Map<String, dynamic> json) => ClassRoom(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      order: json['order'] as int?,
      cover: json['cover'] as String?,
      block: json['block'] == null
          ? null
          : ClassBlock.fromJson(json['block'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClassRoomToJson(ClassRoom instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'order': instance.order,
      'cover': instance.cover,
      'block': instance.block,
    };
