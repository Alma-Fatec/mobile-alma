// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassBlock _$ClassBlockFromJson(Map<String, dynamic> json) => ClassBlock(
      title: json['title'] as String?,
      description: json['description'] as String?,
      sequence: json['sequence'] as int?,
      file: json['file'] as String?,
      classroom: (json['classroom'] as List<dynamic>?)
          ?.map((e) => ClassRoom.fromJson(e as Map<String, dynamic>))
          .toList(),
      students: (json['students'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..id = json['id'] as int?;

Map<String, dynamic> _$ClassBlockToJson(ClassBlock instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'sequence': instance.sequence,
      'file': instance.file,
      'classroom': instance.classroom,
      'students': instance.students,
    };
