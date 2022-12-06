// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Option _$OptionFromJson(Map<String, dynamic> json) => Option(
      text: json['text'] as String?,
      file: json['file'] as String?,
      isCorrect: json['isCorrect'] as bool?,
    );

Map<String, dynamic> _$OptionToJson(Option instance) => <String, dynamic>{
      'text': instance.text,
      'file': instance.file,
      'isCorrect': instance.isCorrect,
    };
