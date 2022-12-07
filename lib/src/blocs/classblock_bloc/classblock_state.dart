part of 'classblock_bloc.dart';

@freezed
class ClassblockState with _$ClassblockState {
  factory ClassblockState({
    @Default(null) ClassBlock? currentBlock,
    @Default(true) bool? isLoading,
    @Default(false) bool? isError,
  }) = _ClassblockState;

  ClassblockState._();
}
