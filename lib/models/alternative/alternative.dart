import 'package:json_annotation/json_annotation.dart';
part 'alternative.g.dart';

@JsonSerializable()
class Alternative {
  int? id;
  String? text;
  String? file;
  bool? isCorrect;

  Alternative({this.id, this.text, this.file, this.isCorrect});

  factory Alternative.fromJson(Map<String, dynamic> json) => _$AlternativeFromJson(json);

  Map<String, dynamic> toJson() => _$AlternativeToJson(this);
}