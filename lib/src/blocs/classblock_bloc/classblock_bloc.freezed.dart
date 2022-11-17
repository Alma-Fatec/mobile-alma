// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'classblock_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClassblockEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadClassblock,
    required TResult Function(int blockId) loadClassroomByBlockId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadClassblock,
    TResult? Function(int blockId)? loadClassroomByBlockId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadClassblock,
    TResult Function(int blockId)? loadClassroomByBlockId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadClassblock value) loadClassblock,
    required TResult Function(LoadClassroomByBlockId value)
        loadClassroomByBlockId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadClassblock value)? loadClassblock,
    TResult? Function(LoadClassroomByBlockId value)? loadClassroomByBlockId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadClassblock value)? loadClassblock,
    TResult Function(LoadClassroomByBlockId value)? loadClassroomByBlockId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassblockEventCopyWith<$Res> {
  factory $ClassblockEventCopyWith(
          ClassblockEvent value, $Res Function(ClassblockEvent) then) =
      _$ClassblockEventCopyWithImpl<$Res, ClassblockEvent>;
}

/// @nodoc
class _$ClassblockEventCopyWithImpl<$Res, $Val extends ClassblockEvent>
    implements $ClassblockEventCopyWith<$Res> {
  _$ClassblockEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadClassblockCopyWith<$Res> {
  factory _$$LoadClassblockCopyWith(
          _$LoadClassblock value, $Res Function(_$LoadClassblock) then) =
      __$$LoadClassblockCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadClassblockCopyWithImpl<$Res>
    extends _$ClassblockEventCopyWithImpl<$Res, _$LoadClassblock>
    implements _$$LoadClassblockCopyWith<$Res> {
  __$$LoadClassblockCopyWithImpl(
      _$LoadClassblock _value, $Res Function(_$LoadClassblock) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadClassblock implements LoadClassblock {
  const _$LoadClassblock();

  @override
  String toString() {
    return 'ClassblockEvent.loadClassblock()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadClassblock);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadClassblock,
    required TResult Function(int blockId) loadClassroomByBlockId,
  }) {
    return loadClassblock();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadClassblock,
    TResult? Function(int blockId)? loadClassroomByBlockId,
  }) {
    return loadClassblock?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadClassblock,
    TResult Function(int blockId)? loadClassroomByBlockId,
    required TResult orElse(),
  }) {
    if (loadClassblock != null) {
      return loadClassblock();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadClassblock value) loadClassblock,
    required TResult Function(LoadClassroomByBlockId value)
        loadClassroomByBlockId,
  }) {
    return loadClassblock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadClassblock value)? loadClassblock,
    TResult? Function(LoadClassroomByBlockId value)? loadClassroomByBlockId,
  }) {
    return loadClassblock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadClassblock value)? loadClassblock,
    TResult Function(LoadClassroomByBlockId value)? loadClassroomByBlockId,
    required TResult orElse(),
  }) {
    if (loadClassblock != null) {
      return loadClassblock(this);
    }
    return orElse();
  }
}

abstract class LoadClassblock implements ClassblockEvent {
  const factory LoadClassblock() = _$LoadClassblock;
}

/// @nodoc
abstract class _$$LoadClassroomByBlockIdCopyWith<$Res> {
  factory _$$LoadClassroomByBlockIdCopyWith(_$LoadClassroomByBlockId value,
          $Res Function(_$LoadClassroomByBlockId) then) =
      __$$LoadClassroomByBlockIdCopyWithImpl<$Res>;
  @useResult
  $Res call({int blockId});
}

/// @nodoc
class __$$LoadClassroomByBlockIdCopyWithImpl<$Res>
    extends _$ClassblockEventCopyWithImpl<$Res, _$LoadClassroomByBlockId>
    implements _$$LoadClassroomByBlockIdCopyWith<$Res> {
  __$$LoadClassroomByBlockIdCopyWithImpl(_$LoadClassroomByBlockId _value,
      $Res Function(_$LoadClassroomByBlockId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockId = null,
  }) {
    return _then(_$LoadClassroomByBlockId(
      null == blockId
          ? _value.blockId
          : blockId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadClassroomByBlockId implements LoadClassroomByBlockId {
  const _$LoadClassroomByBlockId(this.blockId);

  @override
  final int blockId;

  @override
  String toString() {
    return 'ClassblockEvent.loadClassroomByBlockId(blockId: $blockId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadClassroomByBlockId &&
            (identical(other.blockId, blockId) || other.blockId == blockId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blockId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadClassroomByBlockIdCopyWith<_$LoadClassroomByBlockId> get copyWith =>
      __$$LoadClassroomByBlockIdCopyWithImpl<_$LoadClassroomByBlockId>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadClassblock,
    required TResult Function(int blockId) loadClassroomByBlockId,
  }) {
    return loadClassroomByBlockId(blockId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadClassblock,
    TResult? Function(int blockId)? loadClassroomByBlockId,
  }) {
    return loadClassroomByBlockId?.call(blockId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadClassblock,
    TResult Function(int blockId)? loadClassroomByBlockId,
    required TResult orElse(),
  }) {
    if (loadClassroomByBlockId != null) {
      return loadClassroomByBlockId(blockId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadClassblock value) loadClassblock,
    required TResult Function(LoadClassroomByBlockId value)
        loadClassroomByBlockId,
  }) {
    return loadClassroomByBlockId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadClassblock value)? loadClassblock,
    TResult? Function(LoadClassroomByBlockId value)? loadClassroomByBlockId,
  }) {
    return loadClassroomByBlockId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadClassblock value)? loadClassblock,
    TResult Function(LoadClassroomByBlockId value)? loadClassroomByBlockId,
    required TResult orElse(),
  }) {
    if (loadClassroomByBlockId != null) {
      return loadClassroomByBlockId(this);
    }
    return orElse();
  }
}

abstract class LoadClassroomByBlockId implements ClassblockEvent {
  const factory LoadClassroomByBlockId(final int blockId) =
      _$LoadClassroomByBlockId;

  int get blockId;
  @JsonKey(ignore: true)
  _$$LoadClassroomByBlockIdCopyWith<_$LoadClassroomByBlockId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClassblockState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClassBlock classBlock) loaded,
    required TResult Function(String message) error,
    required TResult Function(ClassRoom classRoom) newClassLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ClassBlock classBlock)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(ClassRoom classRoom)? newClassLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClassBlock classBlock)? loaded,
    TResult Function(String message)? error,
    TResult Function(ClassRoom classRoom)? newClassLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(ClassRoomLoaded value) newClassLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(ClassRoomLoaded value)? newClassLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(ClassRoomLoaded value)? newClassLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassblockStateCopyWith<$Res> {
  factory $ClassblockStateCopyWith(
          ClassblockState value, $Res Function(ClassblockState) then) =
      _$ClassblockStateCopyWithImpl<$Res, ClassblockState>;
}

/// @nodoc
class _$ClassblockStateCopyWithImpl<$Res, $Val extends ClassblockState>
    implements $ClassblockStateCopyWith<$Res> {
  _$ClassblockStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$ClassblockStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ClassblockState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClassBlock classBlock) loaded,
    required TResult Function(String message) error,
    required TResult Function(ClassRoom classRoom) newClassLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ClassBlock classBlock)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(ClassRoom classRoom)? newClassLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClassBlock classBlock)? loaded,
    TResult Function(String message)? error,
    TResult Function(ClassRoom classRoom)? newClassLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(ClassRoomLoaded value) newClassLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(ClassRoomLoaded value)? newClassLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(ClassRoomLoaded value)? newClassLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ClassblockState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadedCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({ClassBlock classBlock});
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res>
    extends _$ClassblockStateCopyWithImpl<$Res, _$Loaded>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classBlock = null,
  }) {
    return _then(_$Loaded(
      null == classBlock
          ? _value.classBlock
          : classBlock // ignore: cast_nullable_to_non_nullable
              as ClassBlock,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded(this.classBlock);

  @override
  final ClassBlock classBlock;

  @override
  String toString() {
    return 'ClassblockState.loaded(classBlock: $classBlock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            (identical(other.classBlock, classBlock) ||
                other.classBlock == classBlock));
  }

  @override
  int get hashCode => Object.hash(runtimeType, classBlock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClassBlock classBlock) loaded,
    required TResult Function(String message) error,
    required TResult Function(ClassRoom classRoom) newClassLoaded,
  }) {
    return loaded(classBlock);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ClassBlock classBlock)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(ClassRoom classRoom)? newClassLoaded,
  }) {
    return loaded?.call(classBlock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClassBlock classBlock)? loaded,
    TResult Function(String message)? error,
    TResult Function(ClassRoom classRoom)? newClassLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(classBlock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(ClassRoomLoaded value) newClassLoaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(ClassRoomLoaded value)? newClassLoaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(ClassRoomLoaded value)? newClassLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements ClassblockState {
  const factory Loaded(final ClassBlock classBlock) = _$Loaded;

  ClassBlock get classBlock;
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$ClassblockStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$Error(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ClassblockState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClassBlock classBlock) loaded,
    required TResult Function(String message) error,
    required TResult Function(ClassRoom classRoom) newClassLoaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ClassBlock classBlock)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(ClassRoom classRoom)? newClassLoaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClassBlock classBlock)? loaded,
    TResult Function(String message)? error,
    TResult Function(ClassRoom classRoom)? newClassLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(ClassRoomLoaded value) newClassLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(ClassRoomLoaded value)? newClassLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(ClassRoomLoaded value)? newClassLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ClassblockState {
  const factory Error(final String message) = _$Error;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClassRoomLoadedCopyWith<$Res> {
  factory _$$ClassRoomLoadedCopyWith(
          _$ClassRoomLoaded value, $Res Function(_$ClassRoomLoaded) then) =
      __$$ClassRoomLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({ClassRoom classRoom});
}

/// @nodoc
class __$$ClassRoomLoadedCopyWithImpl<$Res>
    extends _$ClassblockStateCopyWithImpl<$Res, _$ClassRoomLoaded>
    implements _$$ClassRoomLoadedCopyWith<$Res> {
  __$$ClassRoomLoadedCopyWithImpl(
      _$ClassRoomLoaded _value, $Res Function(_$ClassRoomLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classRoom = null,
  }) {
    return _then(_$ClassRoomLoaded(
      null == classRoom
          ? _value.classRoom
          : classRoom // ignore: cast_nullable_to_non_nullable
              as ClassRoom,
    ));
  }
}

/// @nodoc

class _$ClassRoomLoaded implements ClassRoomLoaded {
  const _$ClassRoomLoaded(this.classRoom);

  @override
  final ClassRoom classRoom;

  @override
  String toString() {
    return 'ClassblockState.newClassLoaded(classRoom: $classRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassRoomLoaded &&
            (identical(other.classRoom, classRoom) ||
                other.classRoom == classRoom));
  }

  @override
  int get hashCode => Object.hash(runtimeType, classRoom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassRoomLoadedCopyWith<_$ClassRoomLoaded> get copyWith =>
      __$$ClassRoomLoadedCopyWithImpl<_$ClassRoomLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClassBlock classBlock) loaded,
    required TResult Function(String message) error,
    required TResult Function(ClassRoom classRoom) newClassLoaded,
  }) {
    return newClassLoaded(classRoom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ClassBlock classBlock)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(ClassRoom classRoom)? newClassLoaded,
  }) {
    return newClassLoaded?.call(classRoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClassBlock classBlock)? loaded,
    TResult Function(String message)? error,
    TResult Function(ClassRoom classRoom)? newClassLoaded,
    required TResult orElse(),
  }) {
    if (newClassLoaded != null) {
      return newClassLoaded(classRoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(ClassRoomLoaded value) newClassLoaded,
  }) {
    return newClassLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(ClassRoomLoaded value)? newClassLoaded,
  }) {
    return newClassLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(ClassRoomLoaded value)? newClassLoaded,
    required TResult orElse(),
  }) {
    if (newClassLoaded != null) {
      return newClassLoaded(this);
    }
    return orElse();
  }
}

abstract class ClassRoomLoaded implements ClassblockState {
  const factory ClassRoomLoaded(final ClassRoom classRoom) = _$ClassRoomLoaded;

  ClassRoom get classRoom;
  @JsonKey(ignore: true)
  _$$ClassRoomLoadedCopyWith<_$ClassRoomLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
