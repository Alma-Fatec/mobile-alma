// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lesson _$LessonFromJson(Map<String, dynamic> json) => Lesson(
      id: json['id'] as int?,
      description: json['description'] as String?,
      file: json['file'] as String?,
      lessonType: json['lessonType'] as String?,
      hiddenText: json['hiddenText'] as String?,
      alternatives: (json['alternatives'] as List<dynamic>?)
          ?.map((e) => Alternative.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LessonToJson(Lesson instance) => <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'file': instance.file,
      'lessonType': instance.lessonType,
      'hiddenText': instance.hiddenText,
      'alternatives': instance.alternatives,
    };
