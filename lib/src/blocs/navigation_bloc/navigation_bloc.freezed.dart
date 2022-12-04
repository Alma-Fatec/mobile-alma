// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String blockId) initialise,
    required TResult Function(String blockId) loadResults,
    required TResult Function() loadMoreResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String blockId)? initialise,
    TResult? Function(String blockId)? loadResults,
    TResult? Function()? loadMoreResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String blockId)? initialise,
    TResult Function(String blockId)? loadResults,
    TResult Function()? loadMoreResults,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialise value) initialise,
    required TResult Function(LoadResults value) loadResults,
    required TResult Function(LoadMoreResults value) loadMoreResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialise value)? initialise,
    TResult? Function(LoadResults value)? loadResults,
    TResult? Function(LoadMoreResults value)? loadMoreResults,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialise value)? initialise,
    TResult Function(LoadResults value)? loadResults,
    TResult Function(LoadMoreResults value)? loadMoreResults,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationEventCopyWith<$Res> {
  factory $NavigationEventCopyWith(
          NavigationEvent value, $Res Function(NavigationEvent) then) =
      _$NavigationEventCopyWithImpl<$Res, NavigationEvent>;
}

/// @nodoc
class _$NavigationEventCopyWithImpl<$Res, $Val extends NavigationEvent>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialiseCopyWith<$Res> {
  factory _$$InitialiseCopyWith(
          _$Initialise value, $Res Function(_$Initialise) then) =
      __$$InitialiseCopyWithImpl<$Res>;
  @useResult
  $Res call({String blockId});
}

/// @nodoc
class __$$InitialiseCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res, _$Initialise>
    implements _$$InitialiseCopyWith<$Res> {
  __$$InitialiseCopyWithImpl(
      _$Initialise _value, $Res Function(_$Initialise) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockId = null,
  }) {
    return _then(_$Initialise(
      blockId: null == blockId
          ? _value.blockId
          : blockId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Initialise implements Initialise {
  const _$Initialise({required this.blockId});

  @override
  final String blockId;

  @override
  String toString() {
    return 'NavigationEvent.initialise(blockId: $blockId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initialise &&
            (identical(other.blockId, blockId) || other.blockId == blockId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blockId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialiseCopyWith<_$Initialise> get copyWith =>
      __$$InitialiseCopyWithImpl<_$Initialise>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String blockId) initialise,
    required TResult Function(String blockId) loadResults,
    required TResult Function() loadMoreResults,
  }) {
    return initialise(blockId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String blockId)? initialise,
    TResult? Function(String blockId)? loadResults,
    TResult? Function()? loadMoreResults,
  }) {
    return initialise?.call(blockId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String blockId)? initialise,
    TResult Function(String blockId)? loadResults,
    TResult Function()? loadMoreResults,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise(blockId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialise value) initialise,
    required TResult Function(LoadResults value) loadResults,
    required TResult Function(LoadMoreResults value) loadMoreResults,
  }) {
    return initialise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialise value)? initialise,
    TResult? Function(LoadResults value)? loadResults,
    TResult? Function(LoadMoreResults value)? loadMoreResults,
  }) {
    return initialise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialise value)? initialise,
    TResult Function(LoadResults value)? loadResults,
    TResult Function(LoadMoreResults value)? loadMoreResults,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise(this);
    }
    return orElse();
  }
}

abstract class Initialise implements NavigationEvent {
  const factory Initialise({required final String blockId}) = _$Initialise;

  String get blockId;
  @JsonKey(ignore: true)
  _$$InitialiseCopyWith<_$Initialise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadResultsCopyWith<$Res> {
  factory _$$LoadResultsCopyWith(
          _$LoadResults value, $Res Function(_$LoadResults) then) =
      __$$LoadResultsCopyWithImpl<$Res>;
  @useResult
  $Res call({String blockId});
}

/// @nodoc
class __$$LoadResultsCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res, _$LoadResults>
    implements _$$LoadResultsCopyWith<$Res> {
  __$$LoadResultsCopyWithImpl(
      _$LoadResults _value, $Res Function(_$LoadResults) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockId = null,
  }) {
    return _then(_$LoadResults(
      blockId: null == blockId
          ? _value.blockId
          : blockId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadResults implements LoadResults {
  const _$LoadResults({required this.blockId});

  @override
  final String blockId;

  @override
  String toString() {
    return 'NavigationEvent.loadResults(blockId: $blockId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadResults &&
            (identical(other.blockId, blockId) || other.blockId == blockId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blockId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadResultsCopyWith<_$LoadResults> get copyWith =>
      __$$LoadResultsCopyWithImpl<_$LoadResults>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String blockId) initialise,
    required TResult Function(String blockId) loadResults,
    required TResult Function() loadMoreResults,
  }) {
    return loadResults(blockId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String blockId)? initialise,
    TResult? Function(String blockId)? loadResults,
    TResult? Function()? loadMoreResults,
  }) {
    return loadResults?.call(blockId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String blockId)? initialise,
    TResult Function(String blockId)? loadResults,
    TResult Function()? loadMoreResults,
    required TResult orElse(),
  }) {
    if (loadResults != null) {
      return loadResults(blockId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialise value) initialise,
    required TResult Function(LoadResults value) loadResults,
    required TResult Function(LoadMoreResults value) loadMoreResults,
  }) {
    return loadResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialise value)? initialise,
    TResult? Function(LoadResults value)? loadResults,
    TResult? Function(LoadMoreResults value)? loadMoreResults,
  }) {
    return loadResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialise value)? initialise,
    TResult Function(LoadResults value)? loadResults,
    TResult Function(LoadMoreResults value)? loadMoreResults,
    required TResult orElse(),
  }) {
    if (loadResults != null) {
      return loadResults(this);
    }
    return orElse();
  }
}

abstract class LoadResults implements NavigationEvent {
  const factory LoadResults({required final String blockId}) = _$LoadResults;

  String get blockId;
  @JsonKey(ignore: true)
  _$$LoadResultsCopyWith<_$LoadResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreResultsCopyWith<$Res> {
  factory _$$LoadMoreResultsCopyWith(
          _$LoadMoreResults value, $Res Function(_$LoadMoreResults) then) =
      __$$LoadMoreResultsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreResultsCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res, _$LoadMoreResults>
    implements _$$LoadMoreResultsCopyWith<$Res> {
  __$$LoadMoreResultsCopyWithImpl(
      _$LoadMoreResults _value, $Res Function(_$LoadMoreResults) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMoreResults implements LoadMoreResults {
  const _$LoadMoreResults();

  @override
  String toString() {
    return 'NavigationEvent.loadMoreResults()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreResults);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String blockId) initialise,
    required TResult Function(String blockId) loadResults,
    required TResult Function() loadMoreResults,
  }) {
    return loadMoreResults();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String blockId)? initialise,
    TResult? Function(String blockId)? loadResults,
    TResult? Function()? loadMoreResults,
  }) {
    return loadMoreResults?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String blockId)? initialise,
    TResult Function(String blockId)? loadResults,
    TResult Function()? loadMoreResults,
    required TResult orElse(),
  }) {
    if (loadMoreResults != null) {
      return loadMoreResults();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialise value) initialise,
    required TResult Function(LoadResults value) loadResults,
    required TResult Function(LoadMoreResults value) loadMoreResults,
  }) {
    return loadMoreResults(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialise value)? initialise,
    TResult? Function(LoadResults value)? loadResults,
    TResult? Function(LoadMoreResults value)? loadMoreResults,
  }) {
    return loadMoreResults?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialise value)? initialise,
    TResult Function(LoadResults value)? loadResults,
    TResult Function(LoadMoreResults value)? loadMoreResults,
    required TResult orElse(),
  }) {
    if (loadMoreResults != null) {
      return loadMoreResults(this);
    }
    return orElse();
  }
}

abstract class LoadMoreResults implements NavigationEvent {
  const factory LoadMoreResults() = _$LoadMoreResults;
}

/// @nodoc
mixin _$NavigationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ClassBlock classBlock) classBlockLoaded,
    required TResult Function(ClassRoom classRoom) classRoomLoaded,
    required TResult Function(Assignment assignment) assingmentLoaded,
    required TResult Function() ended,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ClassBlock classBlock)? classBlockLoaded,
    TResult? Function(ClassRoom classRoom)? classRoomLoaded,
    TResult? Function(Assignment assignment)? assingmentLoaded,
    TResult? Function()? ended,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ClassBlock classBlock)? classBlockLoaded,
    TResult Function(ClassRoom classRoom)? classRoomLoaded,
    TResult Function(Assignment assignment)? assingmentLoaded,
    TResult Function()? ended,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ClassBlockLoaded value) classBlockLoaded,
    required TResult Function(ClassRoomLoaded value) classRoomLoaded,
    required TResult Function(AssignmentLoaded value) assingmentLoaded,
    required TResult Function(Ended value) ended,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ClassBlockLoaded value)? classBlockLoaded,
    TResult? Function(ClassRoomLoaded value)? classRoomLoaded,
    TResult? Function(AssignmentLoaded value)? assingmentLoaded,
    TResult? Function(Ended value)? ended,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ClassBlockLoaded value)? classBlockLoaded,
    TResult Function(ClassRoomLoaded value)? classRoomLoaded,
    TResult Function(AssignmentLoaded value)? assingmentLoaded,
    TResult Function(Ended value)? ended,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res, NavigationState>;
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res, $Val extends NavigationState>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

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
    extends _$NavigationStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'NavigationState.initial()';
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
    required TResult Function() loading,
    required TResult Function(ClassBlock classBlock) classBlockLoaded,
    required TResult Function(ClassRoom classRoom) classRoomLoaded,
    required TResult Function(Assignment assignment) assingmentLoaded,
    required TResult Function() ended,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ClassBlock classBlock)? classBlockLoaded,
    TResult? Function(ClassRoom classRoom)? classRoomLoaded,
    TResult? Function(Assignment assignment)? assingmentLoaded,
    TResult? Function()? ended,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ClassBlock classBlock)? classBlockLoaded,
    TResult Function(ClassRoom classRoom)? classRoomLoaded,
    TResult Function(Assignment assignment)? assingmentLoaded,
    TResult Function()? ended,
    TResult Function(String message)? error,
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
    required TResult Function(Loading value) loading,
    required TResult Function(ClassBlockLoaded value) classBlockLoaded,
    required TResult Function(ClassRoomLoaded value) classRoomLoaded,
    required TResult Function(AssignmentLoaded value) assingmentLoaded,
    required TResult Function(Ended value) ended,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ClassBlockLoaded value)? classBlockLoaded,
    TResult? Function(ClassRoomLoaded value)? classRoomLoaded,
    TResult? Function(AssignmentLoaded value)? assingmentLoaded,
    TResult? Function(Ended value)? ended,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ClassBlockLoaded value)? classBlockLoaded,
    TResult Function(ClassRoomLoaded value)? classRoomLoaded,
    TResult Function(AssignmentLoaded value)? assingmentLoaded,
    TResult Function(Ended value)? ended,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements NavigationState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'NavigationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ClassBlock classBlock) classBlockLoaded,
    required TResult Function(ClassRoom classRoom) classRoomLoaded,
    required TResult Function(Assignment assignment) assingmentLoaded,
    required TResult Function() ended,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ClassBlock classBlock)? classBlockLoaded,
    TResult? Function(ClassRoom classRoom)? classRoomLoaded,
    TResult? Function(Assignment assignment)? assingmentLoaded,
    TResult? Function()? ended,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ClassBlock classBlock)? classBlockLoaded,
    TResult Function(ClassRoom classRoom)? classRoomLoaded,
    TResult Function(Assignment assignment)? assingmentLoaded,
    TResult Function()? ended,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ClassBlockLoaded value) classBlockLoaded,
    required TResult Function(ClassRoomLoaded value) classRoomLoaded,
    required TResult Function(AssignmentLoaded value) assingmentLoaded,
    required TResult Function(Ended value) ended,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ClassBlockLoaded value)? classBlockLoaded,
    TResult? Function(ClassRoomLoaded value)? classRoomLoaded,
    TResult? Function(AssignmentLoaded value)? assingmentLoaded,
    TResult? Function(Ended value)? ended,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ClassBlockLoaded value)? classBlockLoaded,
    TResult Function(ClassRoomLoaded value)? classRoomLoaded,
    TResult Function(AssignmentLoaded value)? assingmentLoaded,
    TResult Function(Ended value)? ended,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements NavigationState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$ClassBlockLoadedCopyWith<$Res> {
  factory _$$ClassBlockLoadedCopyWith(
          _$ClassBlockLoaded value, $Res Function(_$ClassBlockLoaded) then) =
      __$$ClassBlockLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({ClassBlock classBlock});
}

/// @nodoc
class __$$ClassBlockLoadedCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$ClassBlockLoaded>
    implements _$$ClassBlockLoadedCopyWith<$Res> {
  __$$ClassBlockLoadedCopyWithImpl(
      _$ClassBlockLoaded _value, $Res Function(_$ClassBlockLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classBlock = null,
  }) {
    return _then(_$ClassBlockLoaded(
      classBlock: null == classBlock
          ? _value.classBlock
          : classBlock // ignore: cast_nullable_to_non_nullable
              as ClassBlock,
    ));
  }
}

/// @nodoc

class _$ClassBlockLoaded implements ClassBlockLoaded {
  const _$ClassBlockLoaded({required this.classBlock});

  @override
  final ClassBlock classBlock;

  @override
  String toString() {
    return 'NavigationState.classBlockLoaded(classBlock: $classBlock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassBlockLoaded &&
            (identical(other.classBlock, classBlock) ||
                other.classBlock == classBlock));
  }

  @override
  int get hashCode => Object.hash(runtimeType, classBlock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassBlockLoadedCopyWith<_$ClassBlockLoaded> get copyWith =>
      __$$ClassBlockLoadedCopyWithImpl<_$ClassBlockLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ClassBlock classBlock) classBlockLoaded,
    required TResult Function(ClassRoom classRoom) classRoomLoaded,
    required TResult Function(Assignment assignment) assingmentLoaded,
    required TResult Function() ended,
    required TResult Function(String message) error,
  }) {
    return classBlockLoaded(classBlock);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ClassBlock classBlock)? classBlockLoaded,
    TResult? Function(ClassRoom classRoom)? classRoomLoaded,
    TResult? Function(Assignment assignment)? assingmentLoaded,
    TResult? Function()? ended,
    TResult? Function(String message)? error,
  }) {
    return classBlockLoaded?.call(classBlock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ClassBlock classBlock)? classBlockLoaded,
    TResult Function(ClassRoom classRoom)? classRoomLoaded,
    TResult Function(Assignment assignment)? assingmentLoaded,
    TResult Function()? ended,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (classBlockLoaded != null) {
      return classBlockLoaded(classBlock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ClassBlockLoaded value) classBlockLoaded,
    required TResult Function(ClassRoomLoaded value) classRoomLoaded,
    required TResult Function(AssignmentLoaded value) assingmentLoaded,
    required TResult Function(Ended value) ended,
    required TResult Function(Error value) error,
  }) {
    return classBlockLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ClassBlockLoaded value)? classBlockLoaded,
    TResult? Function(ClassRoomLoaded value)? classRoomLoaded,
    TResult? Function(AssignmentLoaded value)? assingmentLoaded,
    TResult? Function(Ended value)? ended,
    TResult? Function(Error value)? error,
  }) {
    return classBlockLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ClassBlockLoaded value)? classBlockLoaded,
    TResult Function(ClassRoomLoaded value)? classRoomLoaded,
    TResult Function(AssignmentLoaded value)? assingmentLoaded,
    TResult Function(Ended value)? ended,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (classBlockLoaded != null) {
      return classBlockLoaded(this);
    }
    return orElse();
  }
}

abstract class ClassBlockLoaded implements NavigationState {
  const factory ClassBlockLoaded({required final ClassBlock classBlock}) =
      _$ClassBlockLoaded;

  ClassBlock get classBlock;
  @JsonKey(ignore: true)
  _$$ClassBlockLoadedCopyWith<_$ClassBlockLoaded> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$NavigationStateCopyWithImpl<$Res, _$ClassRoomLoaded>
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
      classRoom: null == classRoom
          ? _value.classRoom
          : classRoom // ignore: cast_nullable_to_non_nullable
              as ClassRoom,
    ));
  }
}

/// @nodoc

class _$ClassRoomLoaded implements ClassRoomLoaded {
  const _$ClassRoomLoaded({required this.classRoom});

  @override
  final ClassRoom classRoom;

  @override
  String toString() {
    return 'NavigationState.classRoomLoaded(classRoom: $classRoom)';
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
    required TResult Function() loading,
    required TResult Function(ClassBlock classBlock) classBlockLoaded,
    required TResult Function(ClassRoom classRoom) classRoomLoaded,
    required TResult Function(Assignment assignment) assingmentLoaded,
    required TResult Function() ended,
    required TResult Function(String message) error,
  }) {
    return classRoomLoaded(classRoom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ClassBlock classBlock)? classBlockLoaded,
    TResult? Function(ClassRoom classRoom)? classRoomLoaded,
    TResult? Function(Assignment assignment)? assingmentLoaded,
    TResult? Function()? ended,
    TResult? Function(String message)? error,
  }) {
    return classRoomLoaded?.call(classRoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ClassBlock classBlock)? classBlockLoaded,
    TResult Function(ClassRoom classRoom)? classRoomLoaded,
    TResult Function(Assignment assignment)? assingmentLoaded,
    TResult Function()? ended,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (classRoomLoaded != null) {
      return classRoomLoaded(classRoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ClassBlockLoaded value) classBlockLoaded,
    required TResult Function(ClassRoomLoaded value) classRoomLoaded,
    required TResult Function(AssignmentLoaded value) assingmentLoaded,
    required TResult Function(Ended value) ended,
    required TResult Function(Error value) error,
  }) {
    return classRoomLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ClassBlockLoaded value)? classBlockLoaded,
    TResult? Function(ClassRoomLoaded value)? classRoomLoaded,
    TResult? Function(AssignmentLoaded value)? assingmentLoaded,
    TResult? Function(Ended value)? ended,
    TResult? Function(Error value)? error,
  }) {
    return classRoomLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ClassBlockLoaded value)? classBlockLoaded,
    TResult Function(ClassRoomLoaded value)? classRoomLoaded,
    TResult Function(AssignmentLoaded value)? assingmentLoaded,
    TResult Function(Ended value)? ended,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (classRoomLoaded != null) {
      return classRoomLoaded(this);
    }
    return orElse();
  }
}

abstract class ClassRoomLoaded implements NavigationState {
  const factory ClassRoomLoaded({required final ClassRoom classRoom}) =
      _$ClassRoomLoaded;

  ClassRoom get classRoom;
  @JsonKey(ignore: true)
  _$$ClassRoomLoadedCopyWith<_$ClassRoomLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssignmentLoadedCopyWith<$Res> {
  factory _$$AssignmentLoadedCopyWith(
          _$AssignmentLoaded value, $Res Function(_$AssignmentLoaded) then) =
      __$$AssignmentLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Assignment assignment});
}

/// @nodoc
class __$$AssignmentLoadedCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$AssignmentLoaded>
    implements _$$AssignmentLoadedCopyWith<$Res> {
  __$$AssignmentLoadedCopyWithImpl(
      _$AssignmentLoaded _value, $Res Function(_$AssignmentLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignment = null,
  }) {
    return _then(_$AssignmentLoaded(
      assignment: null == assignment
          ? _value.assignment
          : assignment // ignore: cast_nullable_to_non_nullable
              as Assignment,
    ));
  }
}

/// @nodoc

class _$AssignmentLoaded implements AssignmentLoaded {
  const _$AssignmentLoaded({required this.assignment});

  @override
  final Assignment assignment;

  @override
  String toString() {
    return 'NavigationState.assingmentLoaded(assignment: $assignment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignmentLoaded &&
            (identical(other.assignment, assignment) ||
                other.assignment == assignment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, assignment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignmentLoadedCopyWith<_$AssignmentLoaded> get copyWith =>
      __$$AssignmentLoadedCopyWithImpl<_$AssignmentLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ClassBlock classBlock) classBlockLoaded,
    required TResult Function(ClassRoom classRoom) classRoomLoaded,
    required TResult Function(Assignment assignment) assingmentLoaded,
    required TResult Function() ended,
    required TResult Function(String message) error,
  }) {
    return assingmentLoaded(assignment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ClassBlock classBlock)? classBlockLoaded,
    TResult? Function(ClassRoom classRoom)? classRoomLoaded,
    TResult? Function(Assignment assignment)? assingmentLoaded,
    TResult? Function()? ended,
    TResult? Function(String message)? error,
  }) {
    return assingmentLoaded?.call(assignment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ClassBlock classBlock)? classBlockLoaded,
    TResult Function(ClassRoom classRoom)? classRoomLoaded,
    TResult Function(Assignment assignment)? assingmentLoaded,
    TResult Function()? ended,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (assingmentLoaded != null) {
      return assingmentLoaded(assignment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ClassBlockLoaded value) classBlockLoaded,
    required TResult Function(ClassRoomLoaded value) classRoomLoaded,
    required TResult Function(AssignmentLoaded value) assingmentLoaded,
    required TResult Function(Ended value) ended,
    required TResult Function(Error value) error,
  }) {
    return assingmentLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ClassBlockLoaded value)? classBlockLoaded,
    TResult? Function(ClassRoomLoaded value)? classRoomLoaded,
    TResult? Function(AssignmentLoaded value)? assingmentLoaded,
    TResult? Function(Ended value)? ended,
    TResult? Function(Error value)? error,
  }) {
    return assingmentLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ClassBlockLoaded value)? classBlockLoaded,
    TResult Function(ClassRoomLoaded value)? classRoomLoaded,
    TResult Function(AssignmentLoaded value)? assingmentLoaded,
    TResult Function(Ended value)? ended,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (assingmentLoaded != null) {
      return assingmentLoaded(this);
    }
    return orElse();
  }
}

abstract class AssignmentLoaded implements NavigationState {
  const factory AssignmentLoaded({required final Assignment assignment}) =
      _$AssignmentLoaded;

  Assignment get assignment;
  @JsonKey(ignore: true)
  _$$AssignmentLoadedCopyWith<_$AssignmentLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EndedCopyWith<$Res> {
  factory _$$EndedCopyWith(_$Ended value, $Res Function(_$Ended) then) =
      __$$EndedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EndedCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$Ended>
    implements _$$EndedCopyWith<$Res> {
  __$$EndedCopyWithImpl(_$Ended _value, $Res Function(_$Ended) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Ended implements Ended {
  const _$Ended();

  @override
  String toString() {
    return 'NavigationState.ended()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Ended);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ClassBlock classBlock) classBlockLoaded,
    required TResult Function(ClassRoom classRoom) classRoomLoaded,
    required TResult Function(Assignment assignment) assingmentLoaded,
    required TResult Function() ended,
    required TResult Function(String message) error,
  }) {
    return ended();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ClassBlock classBlock)? classBlockLoaded,
    TResult? Function(ClassRoom classRoom)? classRoomLoaded,
    TResult? Function(Assignment assignment)? assingmentLoaded,
    TResult? Function()? ended,
    TResult? Function(String message)? error,
  }) {
    return ended?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ClassBlock classBlock)? classBlockLoaded,
    TResult Function(ClassRoom classRoom)? classRoomLoaded,
    TResult Function(Assignment assignment)? assingmentLoaded,
    TResult Function()? ended,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (ended != null) {
      return ended();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ClassBlockLoaded value) classBlockLoaded,
    required TResult Function(ClassRoomLoaded value) classRoomLoaded,
    required TResult Function(AssignmentLoaded value) assingmentLoaded,
    required TResult Function(Ended value) ended,
    required TResult Function(Error value) error,
  }) {
    return ended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ClassBlockLoaded value)? classBlockLoaded,
    TResult? Function(ClassRoomLoaded value)? classRoomLoaded,
    TResult? Function(AssignmentLoaded value)? assingmentLoaded,
    TResult? Function(Ended value)? ended,
    TResult? Function(Error value)? error,
  }) {
    return ended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ClassBlockLoaded value)? classBlockLoaded,
    TResult Function(ClassRoomLoaded value)? classRoomLoaded,
    TResult Function(AssignmentLoaded value)? assingmentLoaded,
    TResult Function(Ended value)? ended,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (ended != null) {
      return ended(this);
    }
    return orElse();
  }
}

abstract class Ended implements NavigationState {
  const factory Ended() = _$Ended;
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
    extends _$NavigationStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$Error(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'NavigationState.error(message: $message)';
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
    required TResult Function() loading,
    required TResult Function(ClassBlock classBlock) classBlockLoaded,
    required TResult Function(ClassRoom classRoom) classRoomLoaded,
    required TResult Function(Assignment assignment) assingmentLoaded,
    required TResult Function() ended,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ClassBlock classBlock)? classBlockLoaded,
    TResult? Function(ClassRoom classRoom)? classRoomLoaded,
    TResult? Function(Assignment assignment)? assingmentLoaded,
    TResult? Function()? ended,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ClassBlock classBlock)? classBlockLoaded,
    TResult Function(ClassRoom classRoom)? classRoomLoaded,
    TResult Function(Assignment assignment)? assingmentLoaded,
    TResult Function()? ended,
    TResult Function(String message)? error,
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
    required TResult Function(Loading value) loading,
    required TResult Function(ClassBlockLoaded value) classBlockLoaded,
    required TResult Function(ClassRoomLoaded value) classRoomLoaded,
    required TResult Function(AssignmentLoaded value) assingmentLoaded,
    required TResult Function(Ended value) ended,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ClassBlockLoaded value)? classBlockLoaded,
    TResult? Function(ClassRoomLoaded value)? classRoomLoaded,
    TResult? Function(AssignmentLoaded value)? assingmentLoaded,
    TResult? Function(Ended value)? ended,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ClassBlockLoaded value)? classBlockLoaded,
    TResult Function(ClassRoomLoaded value)? classRoomLoaded,
    TResult Function(AssignmentLoaded value)? assingmentLoaded,
    TResult Function(Ended value)? ended,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements NavigationState {
  const factory Error({required final String message}) = _$Error;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}
