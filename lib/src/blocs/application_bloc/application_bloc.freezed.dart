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
    required TResult Function(String userId) fetch,
    required TResult Function() logout,
    required TResult Function(String blockId) teste,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialise,
    TResult? Function(String userId)? fetch,
    TResult? Function()? logout,
    TResult? Function(String blockId)? teste,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String userId)? fetch,
    TResult Function()? logout,
    TResult Function(String blockId)? teste,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialise value) initialise,
    required TResult Function(Fetch value) fetch,
    required TResult Function(Logout value) logout,
    required TResult Function(Teste value) teste,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialise value)? initialise,
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Logout value)? logout,
    TResult? Function(Teste value)? teste,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialise value)? initialise,
    TResult Function(Fetch value)? fetch,
    TResult Function(Logout value)? logout,
    TResult Function(Teste value)? teste,
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
    required TResult Function(String userId) fetch,
    required TResult Function() logout,
    required TResult Function(String blockId) teste,
  }) {
    return initialise();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialise,
    TResult? Function(String userId)? fetch,
    TResult? Function()? logout,
    TResult? Function(String blockId)? teste,
  }) {
    return initialise?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String userId)? fetch,
    TResult Function()? logout,
    TResult Function(String blockId)? teste,
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
    required TResult Function(Fetch value) fetch,
    required TResult Function(Logout value) logout,
    required TResult Function(Teste value) teste,
  }) {
    return initialise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialise value)? initialise,
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Logout value)? logout,
    TResult? Function(Teste value)? teste,
  }) {
    return initialise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialise value)? initialise,
    TResult Function(Fetch value)? fetch,
    TResult Function(Logout value)? logout,
    TResult Function(Teste value)? teste,
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
abstract class _$$FetchCopyWith<$Res> {
  factory _$$FetchCopyWith(_$Fetch value, $Res Function(_$Fetch) then) =
      __$$FetchCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$FetchCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$Fetch>
    implements _$$FetchCopyWith<$Res> {
  __$$FetchCopyWithImpl(_$Fetch _value, $Res Function(_$Fetch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$Fetch(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Fetch implements Fetch {
  const _$Fetch({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'ApplicationEvent.fetch(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Fetch &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCopyWith<_$Fetch> get copyWith =>
      __$$FetchCopyWithImpl<_$Fetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(String userId) fetch,
    required TResult Function() logout,
    required TResult Function(String blockId) teste,
  }) {
    return fetch(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialise,
    TResult? Function(String userId)? fetch,
    TResult? Function()? logout,
    TResult? Function(String blockId)? teste,
  }) {
    return fetch?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String userId)? fetch,
    TResult Function()? logout,
    TResult Function(String blockId)? teste,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialise value) initialise,
    required TResult Function(Fetch value) fetch,
    required TResult Function(Logout value) logout,
    required TResult Function(Teste value) teste,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialise value)? initialise,
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Logout value)? logout,
    TResult? Function(Teste value)? teste,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialise value)? initialise,
    TResult Function(Fetch value)? fetch,
    TResult Function(Logout value)? logout,
    TResult Function(Teste value)? teste,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class Fetch implements ApplicationEvent {
  const factory Fetch({required final String userId}) = _$Fetch;

  String get userId;
  @JsonKey(ignore: true)
  _$$FetchCopyWith<_$Fetch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutCopyWith<$Res> {
  factory _$$LogoutCopyWith(_$Logout value, $Res Function(_$Logout) then) =
      __$$LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$Logout>
    implements _$$LogoutCopyWith<$Res> {
  __$$LogoutCopyWithImpl(_$Logout _value, $Res Function(_$Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Logout implements Logout {
  const _$Logout();

  @override
  String toString() {
    return 'ApplicationEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(String userId) fetch,
    required TResult Function() logout,
    required TResult Function(String blockId) teste,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialise,
    TResult? Function(String userId)? fetch,
    TResult? Function()? logout,
    TResult? Function(String blockId)? teste,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String userId)? fetch,
    TResult Function()? logout,
    TResult Function(String blockId)? teste,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialise value) initialise,
    required TResult Function(Fetch value) fetch,
    required TResult Function(Logout value) logout,
    required TResult Function(Teste value) teste,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialise value)? initialise,
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Logout value)? logout,
    TResult? Function(Teste value)? teste,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialise value)? initialise,
    TResult Function(Fetch value)? fetch,
    TResult Function(Logout value)? logout,
    TResult Function(Teste value)? teste,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements ApplicationEvent {
  const factory Logout() = _$Logout;
}

/// @nodoc
abstract class _$$TesteCopyWith<$Res> {
  factory _$$TesteCopyWith(_$Teste value, $Res Function(_$Teste) then) =
      __$$TesteCopyWithImpl<$Res>;
  @useResult
  $Res call({String blockId});
}

/// @nodoc
class __$$TesteCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$Teste>
    implements _$$TesteCopyWith<$Res> {
  __$$TesteCopyWithImpl(_$Teste _value, $Res Function(_$Teste) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockId = null,
  }) {
    return _then(_$Teste(
      blockId: null == blockId
          ? _value.blockId
          : blockId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Teste implements Teste {
  const _$Teste({required this.blockId});

  @override
  final String blockId;

  @override
  String toString() {
    return 'ApplicationEvent.teste(blockId: $blockId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Teste &&
            (identical(other.blockId, blockId) || other.blockId == blockId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blockId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TesteCopyWith<_$Teste> get copyWith =>
      __$$TesteCopyWithImpl<_$Teste>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialise,
    required TResult Function(String userId) fetch,
    required TResult Function() logout,
    required TResult Function(String blockId) teste,
  }) {
    return teste(blockId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialise,
    TResult? Function(String userId)? fetch,
    TResult? Function()? logout,
    TResult? Function(String blockId)? teste,
  }) {
    return teste?.call(blockId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialise,
    TResult Function(String userId)? fetch,
    TResult Function()? logout,
    TResult Function(String blockId)? teste,
    required TResult orElse(),
  }) {
    if (teste != null) {
      return teste(blockId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialise value) initialise,
    required TResult Function(Fetch value) fetch,
    required TResult Function(Logout value) logout,
    required TResult Function(Teste value) teste,
  }) {
    return teste(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialise value)? initialise,
    TResult? Function(Fetch value)? fetch,
    TResult? Function(Logout value)? logout,
    TResult? Function(Teste value)? teste,
  }) {
    return teste?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialise value)? initialise,
    TResult Function(Fetch value)? fetch,
    TResult Function(Logout value)? logout,
    TResult Function(Teste value)? teste,
    required TResult orElse(),
  }) {
    if (teste != null) {
      return teste(this);
    }
    return orElse();
  }
}

abstract class Teste implements ApplicationEvent {
  const factory Teste({required final String blockId}) = _$Teste;

  String get blockId;
  @JsonKey(ignore: true)
  _$$TesteCopyWith<_$Teste> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ApplicationState {
  User? get currentUser => throw _privateConstructorUsedError;
  ClassBlock? get currentBlock => throw _privateConstructorUsedError;
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
  $Res call({User? currentUser, ClassBlock? currentBlock, bool? isInitialised});
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
    Object? currentBlock = freezed,
    Object? isInitialised = freezed,
  }) {
    return _then(_value.copyWith(
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User?,
      currentBlock: freezed == currentBlock
          ? _value.currentBlock
          : currentBlock // ignore: cast_nullable_to_non_nullable
              as ClassBlock?,
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
  $Res call({User? currentUser, ClassBlock? currentBlock, bool? isInitialised});
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
    Object? currentBlock = freezed,
    Object? isInitialised = freezed,
  }) {
    return _then(_$_ApplicationState(
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User?,
      currentBlock: freezed == currentBlock
          ? _value.currentBlock
          : currentBlock // ignore: cast_nullable_to_non_nullable
              as ClassBlock?,
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
      this.currentBlock = null,
      this.isInitialised = false})
      : super._();

  @override
  @JsonKey()
  final User? currentUser;
  @override
  @JsonKey()
  final ClassBlock? currentBlock;
  @override
  @JsonKey()
  final bool? isInitialised;

  @override
  String toString() {
    return 'ApplicationState(currentUser: $currentUser, currentBlock: $currentBlock, isInitialised: $isInitialised)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplicationState &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            (identical(other.currentBlock, currentBlock) ||
                other.currentBlock == currentBlock) &&
            (identical(other.isInitialised, isInitialised) ||
                other.isInitialised == isInitialised));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, currentUser, currentBlock, isInitialised);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplicationStateCopyWith<_$_ApplicationState> get copyWith =>
      __$$_ApplicationStateCopyWithImpl<_$_ApplicationState>(this, _$identity);
}

abstract class _ApplicationState extends ApplicationState {
  factory _ApplicationState(
      {final User? currentUser,
      final ClassBlock? currentBlock,
      final bool? isInitialised}) = _$_ApplicationState;
  _ApplicationState._() : super._();

  @override
  User? get currentUser;
  @override
  ClassBlock? get currentBlock;
  @override
  bool? get isInitialised;
  @override
  @JsonKey(ignore: true)
  _$$_ApplicationStateCopyWith<_$_ApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}
