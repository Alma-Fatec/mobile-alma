import 'package:json_annotation/json_annotation.dart';

part 'paginated_result.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class PaginatedResult<T> {
  const PaginatedResult({this.page, this.limit, this.data});

  factory PaginatedResult.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$PaginatedResultFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) => _$PaginatedResultToJson(this, toJsonT);

  final int? page;
  final int? limit;
  final List<T>? data;
}
