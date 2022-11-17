part of 'classblock_bloc.dart';

@freezed
class ClassblockEvent with _$ClassblockEvent {
  const factory ClassblockEvent.loadClassblock() = LoadClassblock;
  const factory ClassblockEvent.loadClassroomByBlockId(int blockId) = LoadClassroomByBlockId;
}