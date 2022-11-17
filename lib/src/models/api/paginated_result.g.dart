// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedResult<T> _$PaginatedResultFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PaginatedResult<T>(
      page: json['page'] as int?,
      limit: json['limit'] as int?,
      data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
    );

Map<String, dynamic> _$PaginatedResultToJson<T>(
  PaginatedResult<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
      'data': instance.data?.map(toJsonT).toList(),
    };
