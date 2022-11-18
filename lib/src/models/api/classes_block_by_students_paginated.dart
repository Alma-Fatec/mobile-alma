import 'package:alma/src/models/api/paginated_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'classes_block_by_students_paginated.g.dart';

@JsonSerializable()
class ClassesBlockByStudentsPaginated extends PaginatedRequest {
  const ClassesBlockByStudentsPaginated({int? page, int? limit, this.userId}) : super(page: page, limit: limit);

  factory ClassesBlockByStudentsPaginated.fromJson(Map<String, dynamic> json) =>
      _$ClassesBlockByStudentsPaginatedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ClassesBlockByStudentsPaginatedToJson(this);

  final String? userId;
}
