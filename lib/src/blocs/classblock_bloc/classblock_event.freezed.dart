// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'classblock_event.dart';

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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadClassblock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadClassblock,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadClassblock value) loadClassblock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadClassblock value)? loadClassblock,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadClassblock value)? loadClassblock,
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
  }) {
    return loadClassblock();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadClassblock,
  }) {
    return loadClassblock?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadClassblock,
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
  }) {
    return loadClassblock(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadClassblock value)? loadClassblock,
  }) {
    return loadClassblock?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadClassblock value)? loadClassblock,
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
