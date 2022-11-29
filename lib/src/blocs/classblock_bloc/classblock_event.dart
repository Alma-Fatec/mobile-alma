part of 'classblock_bloc.dart';

@freezed
class ClassblockEvent with _$ClassblockEvent {
  const factory ClassblockEvent.loadClassblockByUserId({String? userId}) = LoadClassblockByUserId;
  const factory ClassblockEvent.loadClassroomByBlockId(String blockId) = LoadClassroomByBlockId;
}