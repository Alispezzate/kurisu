// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String username) perform,
    required TResult Function() signOut,
    required TResult Function() check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, String username)? perform,
    TResult? Function()? signOut,
    TResult? Function()? check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String username)? perform,
    TResult Function()? signOut,
    TResult Function()? check,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PerformSignInEvent value) perform,
    required TResult Function(SignOutSignInEvent value) signOut,
    required TResult Function(CheckSignInEvent value) check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PerformSignInEvent value)? perform,
    TResult? Function(SignOutSignInEvent value)? signOut,
    TResult? Function(CheckSignInEvent value)? check,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PerformSignInEvent value)? perform,
    TResult Function(SignOutSignInEvent value)? signOut,
    TResult Function(CheckSignInEvent value)? check,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PerformSignInEventImplCopyWith<$Res> {
  factory _$$PerformSignInEventImplCopyWith(_$PerformSignInEventImpl value,
          $Res Function(_$PerformSignInEventImpl) then) =
      __$$PerformSignInEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token, String username});
}

/// @nodoc
class __$$PerformSignInEventImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$PerformSignInEventImpl>
    implements _$$PerformSignInEventImplCopyWith<$Res> {
  __$$PerformSignInEventImplCopyWithImpl(_$PerformSignInEventImpl _value,
      $Res Function(_$PerformSignInEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? username = null,
  }) {
    return _then(_$PerformSignInEventImpl(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PerformSignInEventImpl implements PerformSignInEvent {
  const _$PerformSignInEventImpl(this.token, this.username);

  @override
  final String token;
  @override
  final String username;

  @override
  String toString() {
    return 'SignInEvent.perform(token: $token, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformSignInEventImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PerformSignInEventImplCopyWith<_$PerformSignInEventImpl> get copyWith =>
      __$$PerformSignInEventImplCopyWithImpl<_$PerformSignInEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String username) perform,
    required TResult Function() signOut,
    required TResult Function() check,
  }) {
    return perform(token, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, String username)? perform,
    TResult? Function()? signOut,
    TResult? Function()? check,
  }) {
    return perform?.call(token, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String username)? perform,
    TResult Function()? signOut,
    TResult Function()? check,
    required TResult orElse(),
  }) {
    if (perform != null) {
      return perform(token, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PerformSignInEvent value) perform,
    required TResult Function(SignOutSignInEvent value) signOut,
    required TResult Function(CheckSignInEvent value) check,
  }) {
    return perform(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PerformSignInEvent value)? perform,
    TResult? Function(SignOutSignInEvent value)? signOut,
    TResult? Function(CheckSignInEvent value)? check,
  }) {
    return perform?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PerformSignInEvent value)? perform,
    TResult Function(SignOutSignInEvent value)? signOut,
    TResult Function(CheckSignInEvent value)? check,
    required TResult orElse(),
  }) {
    if (perform != null) {
      return perform(this);
    }
    return orElse();
  }
}

abstract class PerformSignInEvent implements SignInEvent {
  const factory PerformSignInEvent(final String token, final String username) =
      _$PerformSignInEventImpl;

  String get token;
  String get username;
  @JsonKey(ignore: true)
  _$$PerformSignInEventImplCopyWith<_$PerformSignInEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutSignInEventImplCopyWith<$Res> {
  factory _$$SignOutSignInEventImplCopyWith(_$SignOutSignInEventImpl value,
          $Res Function(_$SignOutSignInEventImpl) then) =
      __$$SignOutSignInEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutSignInEventImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignOutSignInEventImpl>
    implements _$$SignOutSignInEventImplCopyWith<$Res> {
  __$$SignOutSignInEventImplCopyWithImpl(_$SignOutSignInEventImpl _value,
      $Res Function(_$SignOutSignInEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutSignInEventImpl implements SignOutSignInEvent {
  const _$SignOutSignInEventImpl();

  @override
  String toString() {
    return 'SignInEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutSignInEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String username) perform,
    required TResult Function() signOut,
    required TResult Function() check,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, String username)? perform,
    TResult? Function()? signOut,
    TResult? Function()? check,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String username)? perform,
    TResult Function()? signOut,
    TResult Function()? check,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PerformSignInEvent value) perform,
    required TResult Function(SignOutSignInEvent value) signOut,
    required TResult Function(CheckSignInEvent value) check,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PerformSignInEvent value)? perform,
    TResult? Function(SignOutSignInEvent value)? signOut,
    TResult? Function(CheckSignInEvent value)? check,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PerformSignInEvent value)? perform,
    TResult Function(SignOutSignInEvent value)? signOut,
    TResult Function(CheckSignInEvent value)? check,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOutSignInEvent implements SignInEvent {
  const factory SignOutSignInEvent() = _$SignOutSignInEventImpl;
}

/// @nodoc
abstract class _$$CheckSignInEventImplCopyWith<$Res> {
  factory _$$CheckSignInEventImplCopyWith(_$CheckSignInEventImpl value,
          $Res Function(_$CheckSignInEventImpl) then) =
      __$$CheckSignInEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckSignInEventImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$CheckSignInEventImpl>
    implements _$$CheckSignInEventImplCopyWith<$Res> {
  __$$CheckSignInEventImplCopyWithImpl(_$CheckSignInEventImpl _value,
      $Res Function(_$CheckSignInEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckSignInEventImpl implements CheckSignInEvent {
  const _$CheckSignInEventImpl();

  @override
  String toString() {
    return 'SignInEvent.check()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckSignInEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token, String username) perform,
    required TResult Function() signOut,
    required TResult Function() check,
  }) {
    return check();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token, String username)? perform,
    TResult? Function()? signOut,
    TResult? Function()? check,
  }) {
    return check?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token, String username)? perform,
    TResult Function()? signOut,
    TResult Function()? check,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PerformSignInEvent value) perform,
    required TResult Function(SignOutSignInEvent value) signOut,
    required TResult Function(CheckSignInEvent value) check,
  }) {
    return check(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PerformSignInEvent value)? perform,
    TResult? Function(SignOutSignInEvent value)? signOut,
    TResult? Function(CheckSignInEvent value)? check,
  }) {
    return check?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PerformSignInEvent value)? perform,
    TResult Function(SignOutSignInEvent value)? signOut,
    TResult Function(CheckSignInEvent value)? check,
    required TResult orElse(),
  }) {
    if (check != null) {
      return check(this);
    }
    return orElse();
  }
}

abstract class CheckSignInEvent implements SignInEvent {
  const factory CheckSignInEvent() = _$CheckSignInEventImpl;
}

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() performing,
    required TResult Function() performed,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? performing,
    TResult? Function()? performed,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? performing,
    TResult Function()? performed,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleSignInState value) idle,
    required TResult Function(_PerformingSignInState value) performing,
    required TResult Function(_PerformedSignInState value) performed,
    required TResult Function(_ErrorSignInState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleSignInState value)? idle,
    TResult? Function(_PerformingSignInState value)? performing,
    TResult? Function(_PerformedSignInState value)? performed,
    TResult? Function(_ErrorSignInState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleSignInState value)? idle,
    TResult Function(_PerformingSignInState value)? performing,
    TResult Function(_PerformedSignInState value)? performed,
    TResult Function(_ErrorSignInState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IdleSignInStateImplCopyWith<$Res> {
  factory _$$IdleSignInStateImplCopyWith(_$IdleSignInStateImpl value,
          $Res Function(_$IdleSignInStateImpl) then) =
      __$$IdleSignInStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleSignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$IdleSignInStateImpl>
    implements _$$IdleSignInStateImplCopyWith<$Res> {
  __$$IdleSignInStateImplCopyWithImpl(
      _$IdleSignInStateImpl _value, $Res Function(_$IdleSignInStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IdleSignInStateImpl implements _IdleSignInState {
  const _$IdleSignInStateImpl();

  @override
  String toString() {
    return 'SignInState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleSignInStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() performing,
    required TResult Function() performed,
    required TResult Function(String error) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? performing,
    TResult? Function()? performed,
    TResult? Function(String error)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? performing,
    TResult Function()? performed,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleSignInState value) idle,
    required TResult Function(_PerformingSignInState value) performing,
    required TResult Function(_PerformedSignInState value) performed,
    required TResult Function(_ErrorSignInState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleSignInState value)? idle,
    TResult? Function(_PerformingSignInState value)? performing,
    TResult? Function(_PerformedSignInState value)? performed,
    TResult? Function(_ErrorSignInState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleSignInState value)? idle,
    TResult Function(_PerformingSignInState value)? performing,
    TResult Function(_PerformedSignInState value)? performed,
    TResult Function(_ErrorSignInState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _IdleSignInState implements SignInState {
  const factory _IdleSignInState() = _$IdleSignInStateImpl;
}

/// @nodoc
abstract class _$$PerformingSignInStateImplCopyWith<$Res> {
  factory _$$PerformingSignInStateImplCopyWith(
          _$PerformingSignInStateImpl value,
          $Res Function(_$PerformingSignInStateImpl) then) =
      __$$PerformingSignInStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PerformingSignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$PerformingSignInStateImpl>
    implements _$$PerformingSignInStateImplCopyWith<$Res> {
  __$$PerformingSignInStateImplCopyWithImpl(_$PerformingSignInStateImpl _value,
      $Res Function(_$PerformingSignInStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PerformingSignInStateImpl implements _PerformingSignInState {
  const _$PerformingSignInStateImpl();

  @override
  String toString() {
    return 'SignInState.performing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformingSignInStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() performing,
    required TResult Function() performed,
    required TResult Function(String error) error,
  }) {
    return performing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? performing,
    TResult? Function()? performed,
    TResult? Function(String error)? error,
  }) {
    return performing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? performing,
    TResult Function()? performed,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (performing != null) {
      return performing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleSignInState value) idle,
    required TResult Function(_PerformingSignInState value) performing,
    required TResult Function(_PerformedSignInState value) performed,
    required TResult Function(_ErrorSignInState value) error,
  }) {
    return performing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleSignInState value)? idle,
    TResult? Function(_PerformingSignInState value)? performing,
    TResult? Function(_PerformedSignInState value)? performed,
    TResult? Function(_ErrorSignInState value)? error,
  }) {
    return performing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleSignInState value)? idle,
    TResult Function(_PerformingSignInState value)? performing,
    TResult Function(_PerformedSignInState value)? performed,
    TResult Function(_ErrorSignInState value)? error,
    required TResult orElse(),
  }) {
    if (performing != null) {
      return performing(this);
    }
    return orElse();
  }
}

abstract class _PerformingSignInState implements SignInState {
  const factory _PerformingSignInState() = _$PerformingSignInStateImpl;
}

/// @nodoc
abstract class _$$PerformedSignInStateImplCopyWith<$Res> {
  factory _$$PerformedSignInStateImplCopyWith(_$PerformedSignInStateImpl value,
          $Res Function(_$PerformedSignInStateImpl) then) =
      __$$PerformedSignInStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PerformedSignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$PerformedSignInStateImpl>
    implements _$$PerformedSignInStateImplCopyWith<$Res> {
  __$$PerformedSignInStateImplCopyWithImpl(_$PerformedSignInStateImpl _value,
      $Res Function(_$PerformedSignInStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PerformedSignInStateImpl implements _PerformedSignInState {
  const _$PerformedSignInStateImpl();

  @override
  String toString() {
    return 'SignInState.performed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PerformedSignInStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() performing,
    required TResult Function() performed,
    required TResult Function(String error) error,
  }) {
    return performed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? performing,
    TResult? Function()? performed,
    TResult? Function(String error)? error,
  }) {
    return performed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? performing,
    TResult Function()? performed,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (performed != null) {
      return performed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleSignInState value) idle,
    required TResult Function(_PerformingSignInState value) performing,
    required TResult Function(_PerformedSignInState value) performed,
    required TResult Function(_ErrorSignInState value) error,
  }) {
    return performed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleSignInState value)? idle,
    TResult? Function(_PerformingSignInState value)? performing,
    TResult? Function(_PerformedSignInState value)? performed,
    TResult? Function(_ErrorSignInState value)? error,
  }) {
    return performed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleSignInState value)? idle,
    TResult Function(_PerformingSignInState value)? performing,
    TResult Function(_PerformedSignInState value)? performed,
    TResult Function(_ErrorSignInState value)? error,
    required TResult orElse(),
  }) {
    if (performed != null) {
      return performed(this);
    }
    return orElse();
  }
}

abstract class _PerformedSignInState implements SignInState {
  const factory _PerformedSignInState() = _$PerformedSignInStateImpl;
}

/// @nodoc
abstract class _$$ErrorSignInStateImplCopyWith<$Res> {
  factory _$$ErrorSignInStateImplCopyWith(_$ErrorSignInStateImpl value,
          $Res Function(_$ErrorSignInStateImpl) then) =
      __$$ErrorSignInStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorSignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$ErrorSignInStateImpl>
    implements _$$ErrorSignInStateImplCopyWith<$Res> {
  __$$ErrorSignInStateImplCopyWithImpl(_$ErrorSignInStateImpl _value,
      $Res Function(_$ErrorSignInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorSignInStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorSignInStateImpl implements _ErrorSignInState {
  const _$ErrorSignInStateImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SignInState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorSignInStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorSignInStateImplCopyWith<_$ErrorSignInStateImpl> get copyWith =>
      __$$ErrorSignInStateImplCopyWithImpl<_$ErrorSignInStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() performing,
    required TResult Function() performed,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? performing,
    TResult? Function()? performed,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? performing,
    TResult Function()? performed,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleSignInState value) idle,
    required TResult Function(_PerformingSignInState value) performing,
    required TResult Function(_PerformedSignInState value) performed,
    required TResult Function(_ErrorSignInState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleSignInState value)? idle,
    TResult? Function(_PerformingSignInState value)? performing,
    TResult? Function(_PerformedSignInState value)? performed,
    TResult? Function(_ErrorSignInState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleSignInState value)? idle,
    TResult Function(_PerformingSignInState value)? performing,
    TResult Function(_PerformedSignInState value)? performed,
    TResult Function(_ErrorSignInState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorSignInState implements SignInState {
  const factory _ErrorSignInState(final String error) = _$ErrorSignInStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorSignInStateImplCopyWith<_$ErrorSignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
