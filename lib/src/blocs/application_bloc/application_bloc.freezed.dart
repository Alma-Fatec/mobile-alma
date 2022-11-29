// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'application_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApplicationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(User? user) saveCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialise,
    TResult? Function(User? user)? saveCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(User? user)? saveCurrentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialise value) initialise,
    required TResult Function(SaveCurrentUser value) saveCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialise value)? initialise,
    TResult? Function(SaveCurrentUser value)? saveCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialise value)? initialise,
    TResult Function(SaveCurrentUser value)? saveCurrentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationEventCopyWith<$Res> {
  factory $ApplicationEventCopyWith(
          ApplicationEvent value, $Res Function(ApplicationEvent) then) =
      _$ApplicationEventCopyWithImpl<$Res, ApplicationEvent>;
}

/// @nodoc
class _$ApplicationEventCopyWithImpl<$Res, $Val extends ApplicationEvent>
    implements $ApplicationEventCopyWith<$Res> {
  _$ApplicationEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$InitialiseCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$Initialise>
    implements _$$InitialiseCopyWith<$Res> {
  __$$InitialiseCopyWithImpl(
      _$Initialise _value, $Res Function(_$Initialise) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initialise implements Initialise {
  const _$Initialise();

  @override
  String toString() {
    return 'ApplicationEvent.initialise()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initialise);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(User? user) saveCurrentUser,
  }) {
    return initialise();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialise,
    TResult? Function(User? user)? saveCurrentUser,
  }) {
    return initialise?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(User? user)? saveCurrentUser,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialise value) initialise,
    required TResult Function(SaveCurrentUser value) saveCurrentUser,
  }) {
    return initialise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialise value)? initialise,
    TResult? Function(SaveCurrentUser value)? saveCurrentUser,
  }) {
    return initialise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialise value)? initialise,
    TResult Function(SaveCurrentUser value)? saveCurrentUser,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise(this);
    }
    return orElse();
  }
}

abstract class Initialise implements ApplicationEvent {
  const factory Initialise() = _$Initialise;
}

/// @nodoc
abstract class _$$SaveCurrentUserCopyWith<$Res> {
  factory _$$SaveCurrentUserCopyWith(
          _$SaveCurrentUser value, $Res Function(_$SaveCurrentUser) then) =
      __$$SaveCurrentUserCopyWithImpl<$Res>;
  @useResult
  $Res call({User? user});
}

/// @nodoc
class __$$SaveCurrentUserCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$SaveCurrentUser>
    implements _$$SaveCurrentUserCopyWith<$Res> {
  __$$SaveCurrentUserCopyWithImpl(
      _$SaveCurrentUser _value, $Res Function(_$SaveCurrentUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$SaveCurrentUser(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$SaveCurrentUser implements SaveCurrentUser {
  const _$SaveCurrentUser({this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'ApplicationEvent.saveCurrentUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveCurrentUser &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveCurrentUserCopyWith<_$SaveCurrentUser> get copyWith =>
      __$$SaveCurrentUserCopyWithImpl<_$SaveCurrentUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(User? user) saveCurrentUser,
  }) {
    return saveCurrentUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialise,
    TResult? Function(User? user)? saveCurrentUser,
  }) {
    return saveCurrentUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(User? user)? saveCurrentUser,
    required TResult orElse(),
  }) {
    if (saveCurrentUser != null) {
      return saveCurrentUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialise value) initialise,
    required TResult Function(SaveCurrentUser value) saveCurrentUser,
  }) {
    return saveCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialise value)? initialise,
    TResult? Function(SaveCurrentUser value)? saveCurrentUser,
  }) {
    return saveCurrentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialise value)? initialise,
    TResult Function(SaveCurrentUser value)? saveCurrentUser,
    required TResult orElse(),
  }) {
    if (saveCurrentUser != null) {
      return saveCurrentUser(this);
    }
    return orElse();
  }
}

abstract class SaveCurrentUser implements ApplicationEvent {
  const factory SaveCurrentUser({final User? user}) = _$SaveCurrentUser;

  User? get user;
  @JsonKey(ignore: true)
  _$$SaveCurrentUserCopyWith<_$SaveCurrentUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ApplicationState {
  User? get currentUser => throw _privateConstructorUsedError;
  UserStatsMetadata? get userMetadata => throw _privateConstructorUsedError;
  bool? get isInitialised => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplicationStateCopyWith<ApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationStateCopyWith<$Res> {
  factory $ApplicationStateCopyWith(
          ApplicationState value, $Res Function(ApplicationState) then) =
      _$ApplicationStateCopyWithImpl<$Res, ApplicationState>;
  @useResult
  $Res call(
      {User? currentUser,
      UserStatsMetadata? userMetadata,
      bool? isInitialised});
}

/// @nodoc
class _$ApplicationStateCopyWithImpl<$Res, $Val extends ApplicationState>
    implements $ApplicationStateCopyWith<$Res> {
  _$ApplicationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = freezed,
    Object? userMetadata = freezed,
    Object? isInitialised = freezed,
  }) {
    return _then(_value.copyWith(
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User?,
      userMetadata: freezed == userMetadata
          ? _value.userMetadata
          : userMetadata // ignore: cast_nullable_to_non_nullable
              as UserStatsMetadata?,
      isInitialised: freezed == isInitialised
          ? _value.isInitialised
          : isInitialised // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApplicationStateCopyWith<$Res>
    implements $ApplicationStateCopyWith<$Res> {
  factory _$$_ApplicationStateCopyWith(
          _$_ApplicationState value, $Res Function(_$_ApplicationState) then) =
      __$$_ApplicationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User? currentUser,
      UserStatsMetadata? userMetadata,
      bool? isInitialised});
}

/// @nodoc
class __$$_ApplicationStateCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res, _$_ApplicationState>
    implements _$$_ApplicationStateCopyWith<$Res> {
  __$$_ApplicationStateCopyWithImpl(
      _$_ApplicationState _value, $Res Function(_$_ApplicationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentUser = freezed,
    Object? userMetadata = freezed,
    Object? isInitialised = freezed,
  }) {
    return _then(_$_ApplicationState(
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User?,
      userMetadata: freezed == userMetadata
          ? _value.userMetadata
          : userMetadata // ignore: cast_nullable_to_non_nullable
              as UserStatsMetadata?,
      isInitialised: freezed == isInitialised
          ? _value.isInitialised
          : isInitialised // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_ApplicationState extends _ApplicationState {
  _$_ApplicationState(
      {this.currentUser = null,
      this.userMetadata = null,
      this.isInitialised = false})
      : super._();

  @override
  @JsonKey()
  final User? currentUser;
  @override
  @JsonKey()
  final UserStatsMetadata? userMetadata;
  @override
  @JsonKey()
  final bool? isInitialised;

  @override
  String toString() {
    return 'ApplicationState(currentUser: $currentUser, userMetadata: $userMetadata, isInitialised: $isInitialised)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplicationState &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            (identical(other.userMetadata, userMetadata) ||
                other.userMetadata == userMetadata) &&
            (identical(other.isInitialised, isInitialised) ||
                other.isInitialised == isInitialised));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentUser, userMetadata, isInitialised);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplicationStateCopyWith<_$_ApplicationState> get copyWith =>
      __$$_ApplicationStateCopyWithImpl<_$_ApplicationState>(this, _$identity);
}

abstract class _ApplicationState extends ApplicationState {
  factory _ApplicationState(
      {final User? currentUser,
      final UserStatsMetadata? userMetadata,
      final bool? isInitialised}) = _$_ApplicationState;
  _ApplicationState._() : super._();

  @override
  User? get currentUser;
  @override
  UserStatsMetadata? get userMetadata;
  @override
  bool? get isInitialised;
  @override
  @JsonKey(ignore: true)
  _$$_ApplicationStateCopyWith<_$_ApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}
