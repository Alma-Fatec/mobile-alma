import 'package:alma/src/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'classblock_state.freezed.dart';

@freezed
class ClassblockState with _$ClassblockState {
  const factory ClassblockState.initial() = Initial;
  const factory ClassblockState.loaded(ClassBlock classBlock) = Loaded;
  const factory ClassblockState.error(String message) = Error;
}