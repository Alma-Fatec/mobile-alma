// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Assignment _$AssignmentFromJson(Map<String, dynamic> json) => Assignment(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      file: json['file'] as String?,
      answer: json['answer'] as String?,
      hiddenText: json['hiddenText'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      kind: json['kind'] as String?,
      classes: (json['class'] as List<dynamic>?)
          ?.map((e) => ClassRoom.fromJson(e as Map<String, dynamic>))
          .toList(),
      alternatives: (json['alternatives'] as List<dynamic>?)
          ?.map((e) => Alternative.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AssignmentToJson(Assignment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'file': instance.file,
      'answer': instance.answer,
      'hiddenText': instance.hiddenText,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'kind': instance.kind,
      'class': instance.classes,
      'alternatives': instance.alternatives,
    };
