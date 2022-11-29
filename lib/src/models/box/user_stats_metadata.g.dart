// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_stats_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserStatsMetadata _$UserStatsMetadataFromJson(Map<String, dynamic> json) =>
    UserStatsMetadata(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      currentClassBlock: json['currentClassBlock'] == null
          ? null
          : ClassBlock.fromJson(
              json['currentClassBlock'] as Map<String, dynamic>),
      currentClass: json['currentClass'] == null
          ? null
          : ClassRoom.fromJson(json['currentClass'] as Map<String, dynamic>),
      currentLesson: json['currentLesson'] == null
          ? null
          : Lesson.fromJson(json['currentLesson'] as Map<String, dynamic>),
      currentStep: $enumDecodeNullable(_$AlmaStepEnumMap, json['currentStep']),
    );

Map<String, dynamic> _$UserStatsMetadataToJson(UserStatsMetadata instance) =>
    <String, dynamic>{
      'user': instance.user,
      'currentClassBlock': instance.currentClassBlock,
      'currentClass': instance.currentClass,
      'currentLesson': instance.currentLesson,
      'currentStep': _$AlmaStepEnumMap[instance.currentStep],
    };

const _$AlmaStepEnumMap = {
  AlmaStep.block: 'block',
  AlmaStep.classRoom: 'classRoom',
  AlmaStep.lesson: 'lesson',
};
