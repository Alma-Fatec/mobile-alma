part of 'classblock_bloc.dart';

@freezed
class ClassblockState with _$ClassblockState {
  const factory ClassblockState.initial() = Initial;
  const factory ClassblockState.loaded(ClassBlock classBlock) = Loaded;
  const factory ClassblockState.error(String message) = Error;
  const factory ClassblockState.newClassLoaded(ClassRoom classRoom) = ClassRoomLoaded;
}
