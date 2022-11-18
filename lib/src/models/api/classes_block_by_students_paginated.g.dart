// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classes_block_by_students_paginated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassesBlockByStudentsPaginated _$ClassesBlockByStudentsPaginatedFromJson(
        Map<String, dynamic> json) =>
    ClassesBlockByStudentsPaginated(
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$ClassesBlockByStudentsPaginatedToJson(
        ClassesBlockByStudentsPaginated instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'userId': instance.userId,
    };
