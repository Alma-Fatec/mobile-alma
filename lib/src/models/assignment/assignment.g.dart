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
      kind: $enumDecodeNullable(_$AssignmentTypeEnumMap, json['kind']),
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
      'kind': _$AssignmentTypeEnumMap[instance.kind],
      'alternatives': instance.alternatives,
    };

const _$AssignmentTypeEnumMap = {
  AssignmentType.alternativa: 'alternativa',
  AssignmentType.alternativa_com_imagens: 'alternativa_com_imagens',
  AssignmentType.audio: 'audio',
  AssignmentType.alternativa_com_audio: 'alternativa_com_audio',
  AssignmentType.digitacao: 'digitacao',
};
