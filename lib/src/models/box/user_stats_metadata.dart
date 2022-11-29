import 'package:alma/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_stats_metadata.g.dart';

enum AlmaStep { block, classRoom, lesson }

@JsonSerializable()
class UserStatsMetadata {
  const UserStatsMetadata({
    this.user,
    this.currentClassBlock,
    this.currentClass,
    this.currentLesson,
    this.currentStep,
  });

  factory UserStatsMetadata.fromJson(Map<String, dynamic> json) => _$UserStatsMetadataFromJson(json);

  Map<String, dynamic> toJson() => _$UserStatsMetadataToJson(this);

  final User? user;
  final ClassBlock? currentClassBlock;
  final ClassRoom? currentClass;
  final Lesson? currentLesson;
  final AlmaStep? currentStep;
}
