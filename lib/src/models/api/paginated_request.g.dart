// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaginatedRequest _$PaginatedRequestFromJson(Map<String, dynamic> json) =>
    PaginatedRequest(
      page: json['page'] as int?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$PaginatedRequestToJson(PaginatedRequest instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
    };
