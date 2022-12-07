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
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
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
abstract class _$$InitCopyWith<$Res> {
  factory _$$InitCopyWith(_$Init value, $Res Function(_$Init) then) =
      __$$InitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitCopyWithImpl<$Res>
    extends _$ClassblockEventCopyWithImpl<$Res, _$Init>
    implements _$$InitCopyWith<$Res> {
  __$$InitCopyWithImpl(_$Init _value, $Res Function(_$Init) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Init implements Init {
  const _$Init();

  @override
  String toString() {
    return 'ClassblockEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements ClassblockEvent {
  const factory Init() = _$Init;
}

/// @nodoc
mixin _$ClassblockState {
  ClassBlock? get currentBlock => throw _privateConstructorUsedError;
  bool? get isLoading => throw _privateConstructorUsedError;
  bool? get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClassblockStateCopyWith<ClassblockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassblockStateCopyWith<$Res> {
  factory $ClassblockStateCopyWith(
          ClassblockState value, $Res Function(ClassblockState) then) =
      _$ClassblockStateCopyWithImpl<$Res, ClassblockState>;
  @useResult
  $Res call({ClassBlock? currentBlock, bool? isLoading, bool? isError});
}

/// @nodoc
class _$ClassblockStateCopyWithImpl<$Res, $Val extends ClassblockState>
    implements $ClassblockStateCopyWith<$Res> {
  _$ClassblockStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentBlock = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      currentBlock: freezed == currentBlock
          ? _value.currentBlock
          : currentBlock // ignore: cast_nullable_to_non_nullable
              as ClassBlock?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isError: freezed == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClassblockStateCopyWith<$Res>
    implements $ClassblockStateCopyWith<$Res> {
  factory _$$_ClassblockStateCopyWith(
          _$_ClassblockState value, $Res Function(_$_ClassblockState) then) =
      __$$_ClassblockStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ClassBlock? currentBlock, bool? isLoading, bool? isError});
}

/// @nodoc
class __$$_ClassblockStateCopyWithImpl<$Res>
    extends _$ClassblockStateCopyWithImpl<$Res, _$_ClassblockState>
    implements _$$_ClassblockStateCopyWith<$Res> {
  __$$_ClassblockStateCopyWithImpl(
      _$_ClassblockState _value, $Res Function(_$_ClassblockState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentBlock = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_ClassblockState(
      currentBlock: freezed == currentBlock
          ? _value.currentBlock
          : currentBlock // ignore: cast_nullable_to_non_nullable
              as ClassBlock?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      isError: freezed == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_ClassblockState extends _ClassblockState {
  _$_ClassblockState(
      {this.currentBlock = null, this.isLoading = true, this.isError = false})
      : super._();

  @override
  @JsonKey()
  final ClassBlock? currentBlock;
  @override
  @JsonKey()
  final bool? isLoading;
  @override
  @JsonKey()
  final bool? isError;

  @override
  String toString() {
    return 'ClassblockState(currentBlock: $currentBlock, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassblockState &&
            (identical(other.currentBlock, currentBlock) ||
                other.currentBlock == currentBlock) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentBlock, isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassblockStateCopyWith<_$_ClassblockState> get copyWith =>
      __$$_ClassblockStateCopyWithImpl<_$_ClassblockState>(this, _$identity);
}

abstract class _ClassblockState extends ClassblockState {
  factory _ClassblockState(
      {final ClassBlock? currentBlock,
      final bool? isLoading,
      final bool? isError}) = _$_ClassblockState;
  _ClassblockState._() : super._();

  @override
  ClassBlock? get currentBlock;
  @override
  bool? get isLoading;
  @override
  bool? get isError;
  @override
  @JsonKey(ignore: true)
  _$$_ClassblockStateCopyWith<_$_ClassblockState> get copyWith =>
      throw _privateConstructorUsedError;
}
