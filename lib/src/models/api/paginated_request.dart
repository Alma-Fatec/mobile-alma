import 'package:json_annotation/json_annotation.dart';

part 'paginated_request.g.dart';

@JsonSerializable()
class PaginatedRequest {
  const PaginatedRequest({
    this.page,
    this.limit,
  });

  factory PaginatedRequest.fromJson(Map<String, dynamic> json) => _$PaginatedRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PaginatedRequestToJson(this);

  final int? page;
  final int? limit;
}
