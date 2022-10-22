import 'package:freezed_annotation/freezed_annotation.dart';

part 'classblock_event.freezed.dart';

@freezed
class ClassblockEvent with _$ClassblockEvent {
  const factory ClassblockEvent.loadClassblock() = LoadClassblock;
}