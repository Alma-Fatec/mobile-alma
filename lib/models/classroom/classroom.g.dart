// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classroom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassRoom _$ClassRoomFromJson(Map<String, dynamic> json) => ClassRoom(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      sequence: json['sequence'] as int?,
      file: json['file'] as String?,
      lesson: (json['lesson'] as List<dynamic>?)
          ?.map((e) => Lesson.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ClassRoomToJson(ClassRoom instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'sequence': instance.sequence,
      'file': instance.file,
      'lesson': instance.lesson,
    };
