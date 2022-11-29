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
      lesson: (json['lesson'] as List<dynamic>?)
          ?.map((e) => Lesson.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ClassRoomToJson(ClassRoom instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'order': instance.order,
      'cover': instance.cover,
      'lesson': instance.lesson,
    };
