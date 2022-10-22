import 'package:alma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';
part 'lesson.g.dart';

@JsonSerializable()
class Lesson {
  int? id;
  String? description;
  String? file;
  String? lessonType;
  String? hiddenText;
  List<Alternative>? alternatives;

  Lesson({
    this.id,
    this.description,
    this.file,
    this.lessonType,
    this.hiddenText,
    this.alternatives,
  });

  factory Lesson.fromJson(Map<String, dynamic> json) => _$LessonFromJson(json);

  Map<String, dynamic> toJson() => _$LessonToJson(this);
}
