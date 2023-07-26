// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnimeListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAnimeListEvent value) loadList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAnimeListEvent value)? loadList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAnimeListEvent value)? loadList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeListEventCopyWith<$Res> {
  factory $AnimeListEventCopyWith(
          AnimeListEvent value, $Res Function(AnimeListEvent) then) =
      _$AnimeListEventCopyWithImpl<$Res, AnimeListEvent>;
}

/// @nodoc
class _$AnimeListEventCopyWithImpl<$Res, $Val extends AnimeListEvent>
    implements $AnimeListEventCopyWith<$Res> {
  _$AnimeListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadAnimeListEventCopyWith<$Res> {
  factory _$$LoadAnimeListEventCopyWith(_$LoadAnimeListEvent value,
          $Res Function(_$LoadAnimeListEvent) then) =
      __$$LoadAnimeListEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadAnimeListEventCopyWithImpl<$Res>
    extends _$AnimeListEventCopyWithImpl<$Res, _$LoadAnimeListEvent>
    implements _$$LoadAnimeListEventCopyWith<$Res> {
  __$$LoadAnimeListEventCopyWithImpl(
      _$LoadAnimeListEvent _value, $Res Function(_$LoadAnimeListEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadAnimeListEvent implements LoadAnimeListEvent {
  const _$LoadAnimeListEvent();

  @override
  String toString() {
    return 'AnimeListEvent.loadList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadAnimeListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadList,
  }) {
    return loadList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadList,
  }) {
    return loadList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadList,
    required TResult orElse(),
  }) {
    if (loadList != null) {
      return loadList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAnimeListEvent value) loadList,
  }) {
    return loadList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAnimeListEvent value)? loadList,
  }) {
    return loadList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAnimeListEvent value)? loadList,
    required TResult orElse(),
  }) {
    if (loadList != null) {
      return loadList(this);
    }
    return orElse();
  }
}

abstract class LoadAnimeListEvent implements AnimeListEvent {
  const factory LoadAnimeListEvent() = _$LoadAnimeListEvent;
}

/// @nodoc
mixin _$AnimeListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingAnimeListState value) loading,
    required TResult Function(_LoadedAnimeListState value) loaded,
    required TResult Function(_ErrorAnimeListState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingAnimeListState value)? loading,
    TResult? Function(_LoadedAnimeListState value)? loaded,
    TResult? Function(_ErrorAnimeListState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingAnimeListState value)? loading,
    TResult Function(_LoadedAnimeListState value)? loaded,
    TResult Function(_ErrorAnimeListState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeListStateCopyWith<$Res> {
  factory $AnimeListStateCopyWith(
          AnimeListState value, $Res Function(AnimeListState) then) =
      _$AnimeListStateCopyWithImpl<$Res, AnimeListState>;
}

/// @nodoc
class _$AnimeListStateCopyWithImpl<$Res, $Val extends AnimeListState>
    implements $AnimeListStateCopyWith<$Res> {
  _$AnimeListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingAnimeListStateCopyWith<$Res> {
  factory _$$_LoadingAnimeListStateCopyWith(_$_LoadingAnimeListState value,
          $Res Function(_$_LoadingAnimeListState) then) =
      __$$_LoadingAnimeListStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingAnimeListStateCopyWithImpl<$Res>
    extends _$AnimeListStateCopyWithImpl<$Res, _$_LoadingAnimeListState>
    implements _$$_LoadingAnimeListStateCopyWith<$Res> {
  __$$_LoadingAnimeListStateCopyWithImpl(_$_LoadingAnimeListState _value,
      $Res Function(_$_LoadingAnimeListState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingAnimeListState implements _LoadingAnimeListState {
  const _$_LoadingAnimeListState();

  @override
  String toString() {
    return 'AnimeListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingAnimeListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
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
    required TResult Function(_LoadingAnimeListState value) loading,
    required TResult Function(_LoadedAnimeListState value) loaded,
    required TResult Function(_ErrorAnimeListState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingAnimeListState value)? loading,
    TResult? Function(_LoadedAnimeListState value)? loaded,
    TResult? Function(_ErrorAnimeListState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingAnimeListState value)? loading,
    TResult Function(_LoadedAnimeListState value)? loaded,
    TResult Function(_ErrorAnimeListState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingAnimeListState implements AnimeListState {
  const factory _LoadingAnimeListState() = _$_LoadingAnimeListState;
}

/// @nodoc
abstract class _$$_LoadedAnimeListStateCopyWith<$Res> {
  factory _$$_LoadedAnimeListStateCopyWith(_$_LoadedAnimeListState value,
          $Res Function(_$_LoadedAnimeListState) then) =
      __$$_LoadedAnimeListStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadedAnimeListStateCopyWithImpl<$Res>
    extends _$AnimeListStateCopyWithImpl<$Res, _$_LoadedAnimeListState>
    implements _$$_LoadedAnimeListStateCopyWith<$Res> {
  __$$_LoadedAnimeListStateCopyWithImpl(_$_LoadedAnimeListState _value,
      $Res Function(_$_LoadedAnimeListState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadedAnimeListState implements _LoadedAnimeListState {
  const _$_LoadedAnimeListState();

  @override
  String toString() {
    return 'AnimeListState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadedAnimeListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingAnimeListState value) loading,
    required TResult Function(_LoadedAnimeListState value) loaded,
    required TResult Function(_ErrorAnimeListState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingAnimeListState value)? loading,
    TResult? Function(_LoadedAnimeListState value)? loaded,
    TResult? Function(_ErrorAnimeListState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingAnimeListState value)? loading,
    TResult Function(_LoadedAnimeListState value)? loaded,
    TResult Function(_ErrorAnimeListState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedAnimeListState implements AnimeListState {
  const factory _LoadedAnimeListState() = _$_LoadedAnimeListState;
}

/// @nodoc
abstract class _$$_ErrorAnimeListStateCopyWith<$Res> {
  factory _$$_ErrorAnimeListStateCopyWith(_$_ErrorAnimeListState value,
          $Res Function(_$_ErrorAnimeListState) then) =
      __$$_ErrorAnimeListStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorAnimeListStateCopyWithImpl<$Res>
    extends _$AnimeListStateCopyWithImpl<$Res, _$_ErrorAnimeListState>
    implements _$$_ErrorAnimeListStateCopyWith<$Res> {
  __$$_ErrorAnimeListStateCopyWithImpl(_$_ErrorAnimeListState _value,
      $Res Function(_$_ErrorAnimeListState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ErrorAnimeListState implements _ErrorAnimeListState {
  const _$_ErrorAnimeListState();

  @override
  String toString() {
    return 'AnimeListState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ErrorAnimeListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? loaded,
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
    required TResult Function(_LoadingAnimeListState value) loading,
    required TResult Function(_LoadedAnimeListState value) loaded,
    required TResult Function(_ErrorAnimeListState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingAnimeListState value)? loading,
    TResult? Function(_LoadedAnimeListState value)? loaded,
    TResult? Function(_ErrorAnimeListState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingAnimeListState value)? loading,
    TResult Function(_LoadedAnimeListState value)? loaded,
    TResult Function(_ErrorAnimeListState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorAnimeListState implements AnimeListState {
  const factory _ErrorAnimeListState() = _$_ErrorAnimeListState;
}
