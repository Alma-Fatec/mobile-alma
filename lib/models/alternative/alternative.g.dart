// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alternative.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Alternative _$AlternativeFromJson(Map<String, dynamic> json) => Alternative(
      id: json['id'] as int?,
      text: json['text'] as String?,
      file: json['file'] as String?,
      isCorrect: json['isCorrect'] as bool?,
    );

Map<String, dynamic> _$AlternativeToJson(Alternative instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'file': instance.file,
      'isCorrect': instance.isCorrect,
    };
