// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignment_block_by_class_id_paginated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssignmentBlockByClassIdPaginated _$AssignmentBlockByClassIdPaginatedFromJson(
        Map<String, dynamic> json) =>
    AssignmentBlockByClassIdPaginated(
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      classId: json['classId'] as int?,
    );

Map<String, dynamic> _$AssignmentBlockByClassIdPaginatedToJson(
        AssignmentBlockByClassIdPaginated instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'classId': instance.classId,
    };
