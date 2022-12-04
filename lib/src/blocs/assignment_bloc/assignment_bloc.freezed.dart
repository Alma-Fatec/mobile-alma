// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'assignment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AssignmentEvent {
  int get assignmentId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int assignmentId) checkAsDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int assignmentId)? checkAsDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int assignmentId)? checkAsDone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAsDone value) checkAsDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckAsDone value)? checkAsDone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAsDone value)? checkAsDone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AssignmentEventCopyWith<AssignmentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentEventCopyWith<$Res> {
  factory $AssignmentEventCopyWith(
          AssignmentEvent value, $Res Function(AssignmentEvent) then) =
      _$AssignmentEventCopyWithImpl<$Res, AssignmentEvent>;
  @useResult
  $Res call({int assignmentId});
}

/// @nodoc
class _$AssignmentEventCopyWithImpl<$Res, $Val extends AssignmentEvent>
    implements $AssignmentEventCopyWith<$Res> {
  _$AssignmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignmentId = null,
  }) {
    return _then(_value.copyWith(
      assignmentId: null == assignmentId
          ? _value.assignmentId
          : assignmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckAsDoneCopyWith<$Res>
    implements $AssignmentEventCopyWith<$Res> {
  factory _$$CheckAsDoneCopyWith(
          _$CheckAsDone value, $Res Function(_$CheckAsDone) then) =
      __$$CheckAsDoneCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int assignmentId});
}

/// @nodoc
class __$$CheckAsDoneCopyWithImpl<$Res>
    extends _$AssignmentEventCopyWithImpl<$Res, _$CheckAsDone>
    implements _$$CheckAsDoneCopyWith<$Res> {
  __$$CheckAsDoneCopyWithImpl(
      _$CheckAsDone _value, $Res Function(_$CheckAsDone) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignmentId = null,
  }) {
    return _then(_$CheckAsDone(
      assignmentId: null == assignmentId
          ? _value.assignmentId
          : assignmentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CheckAsDone implements CheckAsDone {
  const _$CheckAsDone({required this.assignmentId});

  @override
  final int assignmentId;

  @override
  String toString() {
    return 'AssignmentEvent.checkAsDone(assignmentId: $assignmentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckAsDone &&
            (identical(other.assignmentId, assignmentId) ||
                other.assignmentId == assignmentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, assignmentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckAsDoneCopyWith<_$CheckAsDone> get copyWith =>
      __$$CheckAsDoneCopyWithImpl<_$CheckAsDone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int assignmentId) checkAsDone,
  }) {
    return checkAsDone(assignmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int assignmentId)? checkAsDone,
  }) {
    return checkAsDone?.call(assignmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int assignmentId)? checkAsDone,
    required TResult orElse(),
  }) {
    if (checkAsDone != null) {
      return checkAsDone(assignmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckAsDone value) checkAsDone,
  }) {
    return checkAsDone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckAsDone value)? checkAsDone,
  }) {
    return checkAsDone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckAsDone value)? checkAsDone,
    required TResult orElse(),
  }) {
    if (checkAsDone != null) {
      return checkAsDone(this);
    }
    return orElse();
  }
}

abstract class CheckAsDone implements AssignmentEvent {
  const factory CheckAsDone({required final int assignmentId}) = _$CheckAsDone;

  @override
  int get assignmentId;
  @override
  @JsonKey(ignore: true)
  _$$CheckAsDoneCopyWith<_$CheckAsDone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AssignmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function() checked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function()? checked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function()? checked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Checking value) checking,
    required TResult Function(Checked value) checked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Checking value)? checking,
    TResult? Function(Checked value)? checked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Checking value)? checking,
    TResult Function(Checked value)? checked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignmentStateCopyWith<$Res> {
  factory $AssignmentStateCopyWith(
          AssignmentState value, $Res Function(AssignmentState) then) =
      _$AssignmentStateCopyWithImpl<$Res, AssignmentState>;
}

/// @nodoc
class _$AssignmentStateCopyWithImpl<$Res, $Val extends AssignmentState>
    implements $AssignmentStateCopyWith<$Res> {
  _$AssignmentStateCopyWithImpl(this._value, this._then);

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
    extends _$AssignmentStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AssignmentState.initial()';
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
    required TResult Function() checking,
    required TResult Function() checked,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function()? checked,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function()? checked,
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
    required TResult Function(Checking value) checking,
    required TResult Function(Checked value) checked,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Checking value)? checking,
    TResult? Function(Checked value)? checked,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Checking value)? checking,
    TResult Function(Checked value)? checked,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AssignmentState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$CheckingCopyWith<$Res> {
  factory _$$CheckingCopyWith(
          _$Checking value, $Res Function(_$Checking) then) =
      __$$CheckingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckingCopyWithImpl<$Res>
    extends _$AssignmentStateCopyWithImpl<$Res, _$Checking>
    implements _$$CheckingCopyWith<$Res> {
  __$$CheckingCopyWithImpl(_$Checking _value, $Res Function(_$Checking) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Checking implements Checking {
  const _$Checking();

  @override
  String toString() {
    return 'AssignmentState.checking()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Checking);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function() checked,
  }) {
    return checking();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function()? checked,
  }) {
    return checking?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function()? checked,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Checking value) checking,
    required TResult Function(Checked value) checked,
  }) {
    return checking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Checking value)? checking,
    TResult? Function(Checked value)? checked,
  }) {
    return checking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Checking value)? checking,
    TResult Function(Checked value)? checked,
    required TResult orElse(),
  }) {
    if (checking != null) {
      return checking(this);
    }
    return orElse();
  }
}

abstract class Checking implements AssignmentState {
  const factory Checking() = _$Checking;
}

/// @nodoc
abstract class _$$CheckedCopyWith<$Res> {
  factory _$$CheckedCopyWith(_$Checked value, $Res Function(_$Checked) then) =
      __$$CheckedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckedCopyWithImpl<$Res>
    extends _$AssignmentStateCopyWithImpl<$Res, _$Checked>
    implements _$$CheckedCopyWith<$Res> {
  __$$CheckedCopyWithImpl(_$Checked _value, $Res Function(_$Checked) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Checked implements Checked {
  const _$Checked();

  @override
  String toString() {
    return 'AssignmentState.checked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Checked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checking,
    required TResult Function() checked,
  }) {
    return checked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checking,
    TResult? Function()? checked,
  }) {
    return checked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checking,
    TResult Function()? checked,
    required TResult orElse(),
  }) {
    if (checked != null) {
      return checked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Checking value) checking,
    required TResult Function(Checked value) checked,
  }) {
    return checked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Checking value)? checking,
    TResult? Function(Checked value)? checked,
  }) {
    return checked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Checking value)? checking,
    TResult Function(Checked value)? checked,
    required TResult orElse(),
  }) {
    if (checked != null) {
      return checked(this);
    }
    return orElse();
  }
}

abstract class Checked implements AssignmentState {
  const factory Checked() = _$Checked;
}
