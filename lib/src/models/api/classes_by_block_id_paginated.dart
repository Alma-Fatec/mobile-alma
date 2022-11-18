import 'package:alma/src/models/api/paginated_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'classes_by_block_id_paginated.g.dart';

@JsonSerializable()
class ClassesByBlockIdPaginated extends PaginatedRequest {
  const ClassesByBlockIdPaginated({int? page, int? limit, this.blockId}) : super(page: page, limit: limit);

  factory ClassesByBlockIdPaginated.fromJson(Map<String, dynamic> json) =>
      _$ClassesByBlockIdPaginatedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClassesByBlockIdPaginatedToJson(this);

  final String? blockId;
}
