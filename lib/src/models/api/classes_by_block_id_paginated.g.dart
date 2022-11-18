// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classes_by_block_id_paginated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassesByBlockIdPaginated _$ClassesByBlockIdPaginatedFromJson(
        Map<String, dynamic> json) =>
    ClassesByBlockIdPaginated(
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      blockId: json['blockId'] as String?,
    );

Map<String, dynamic> _$ClassesByBlockIdPaginatedToJson(
        ClassesByBlockIdPaginated instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'blockId': instance.blockId,
    };
