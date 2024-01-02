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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() perform,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? perform,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? perform,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PerformSignInEvent value) perform,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PerformSignInEvent value)? perform,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PerformSignInEvent value)? perform,
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
}

/// @nodoc
class __$$PerformSignInEventImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$PerformSignInEventImpl>
    implements _$$PerformSignInEventImplCopyWith<$Res> {
  __$$PerformSignInEventImplCopyWithImpl(_$PerformSignInEventImpl _value,
      $Res Function(_$PerformSignInEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PerformSignInEventImpl implements PerformSignInEvent {
  const _$PerformSignInEventImpl();

  @override
  String toString() {
    return 'SignInEvent.perform()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PerformSignInEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() perform,
  }) {
    return perform();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? perform,
  }) {
    return perform?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? perform,
    required TResult orElse(),
  }) {
    if (perform != null) {
      return perform();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PerformSignInEvent value) perform,
  }) {
    return perform(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PerformSignInEvent value)? perform,
  }) {
    return perform?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PerformSignInEvent value)? perform,
    required TResult orElse(),
  }) {
    if (perform != null) {
      return perform(this);
    }
    return orElse();
  }
}

abstract class PerformSignInEvent implements SignInEvent {
  const factory PerformSignInEvent() = _$PerformSignInEventImpl;
}

/// @nodoc
mixin _$SignInState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() performing,
    required TResult Function() performed,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? performing,
    TResult? Function()? performed,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? performing,
    TResult Function()? performed,
    TResult Function()? error,
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
    required TResult Function() error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? performing,
    TResult? Function()? performed,
    TResult? Function()? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? performing,
    TResult Function()? performed,
    TResult Function()? error,
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
    required TResult Function() error,
  }) {
    return performing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? performing,
    TResult? Function()? performed,
    TResult? Function()? error,
  }) {
    return performing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? performing,
    TResult Function()? performed,
    TResult Function()? error,
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
    required TResult Function() error,
  }) {
    return performed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? performing,
    TResult? Function()? performed,
    TResult? Function()? error,
  }) {
    return performed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? performing,
    TResult Function()? performed,
    TResult Function()? error,
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
}

/// @nodoc
class __$$ErrorSignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$ErrorSignInStateImpl>
    implements _$$ErrorSignInStateImplCopyWith<$Res> {
  __$$ErrorSignInStateImplCopyWithImpl(_$ErrorSignInStateImpl _value,
      $Res Function(_$ErrorSignInStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorSignInStateImpl implements _ErrorSignInState {
  const _$ErrorSignInStateImpl();

  @override
  String toString() {
    return 'SignInState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorSignInStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() performing,
    required TResult Function() performed,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? performing,
    TResult? Function()? performed,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? performing,
    TResult Function()? performed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
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
  const factory _ErrorSignInState() = _$ErrorSignInStateImpl;
}
