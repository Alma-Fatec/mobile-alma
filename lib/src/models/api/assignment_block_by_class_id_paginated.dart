import 'package:alma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'assignment_block_by_class_id_paginated.g.dart';

@JsonSerializable()
class AssignmentBlockByClassIdPaginated extends PaginatedRequest {
  const AssignmentBlockByClassIdPaginated({int? page, int? limit, this.classId}) : super(page: page, limit: limit);

  factory AssignmentBlockByClassIdPaginated.fromJson(Map<String, dynamic> json) =>
      _$AssignmentBlockByClassIdPaginatedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AssignmentBlockByClassIdPaginatedToJson(this);

  final int? classId;
}
