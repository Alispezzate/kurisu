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
    required TResult Function(String status) loadList,
    required TResult Function(Anime anime) saveAnime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? loadList,
    TResult? Function(Anime anime)? saveAnime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? loadList,
    TResult Function(Anime anime)? saveAnime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAnimeListEvent value) loadList,
    required TResult Function(SaveAnimeEvent value) saveAnime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAnimeListEvent value)? loadList,
    TResult? Function(SaveAnimeEvent value)? saveAnime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAnimeListEvent value)? loadList,
    TResult Function(SaveAnimeEvent value)? saveAnime,
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
abstract class _$$LoadAnimeListEventImplCopyWith<$Res> {
  factory _$$LoadAnimeListEventImplCopyWith(_$LoadAnimeListEventImpl value,
          $Res Function(_$LoadAnimeListEventImpl) then) =
      __$$LoadAnimeListEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$LoadAnimeListEventImplCopyWithImpl<$Res>
    extends _$AnimeListEventCopyWithImpl<$Res, _$LoadAnimeListEventImpl>
    implements _$$LoadAnimeListEventImplCopyWith<$Res> {
  __$$LoadAnimeListEventImplCopyWithImpl(_$LoadAnimeListEventImpl _value,
      $Res Function(_$LoadAnimeListEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$LoadAnimeListEventImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadAnimeListEventImpl implements LoadAnimeListEvent {
  const _$LoadAnimeListEventImpl(this.status);

  @override
  final String status;

  @override
  String toString() {
    return 'AnimeListEvent.loadList(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAnimeListEventImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAnimeListEventImplCopyWith<_$LoadAnimeListEventImpl> get copyWith =>
      __$$LoadAnimeListEventImplCopyWithImpl<_$LoadAnimeListEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) loadList,
    required TResult Function(Anime anime) saveAnime,
  }) {
    return loadList(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? loadList,
    TResult? Function(Anime anime)? saveAnime,
  }) {
    return loadList?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? loadList,
    TResult Function(Anime anime)? saveAnime,
    required TResult orElse(),
  }) {
    if (loadList != null) {
      return loadList(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAnimeListEvent value) loadList,
    required TResult Function(SaveAnimeEvent value) saveAnime,
  }) {
    return loadList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAnimeListEvent value)? loadList,
    TResult? Function(SaveAnimeEvent value)? saveAnime,
  }) {
    return loadList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAnimeListEvent value)? loadList,
    TResult Function(SaveAnimeEvent value)? saveAnime,
    required TResult orElse(),
  }) {
    if (loadList != null) {
      return loadList(this);
    }
    return orElse();
  }
}

abstract class LoadAnimeListEvent implements AnimeListEvent {
  const factory LoadAnimeListEvent(final String status) =
      _$LoadAnimeListEventImpl;

  String get status;
  @JsonKey(ignore: true)
  _$$LoadAnimeListEventImplCopyWith<_$LoadAnimeListEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveAnimeEventImplCopyWith<$Res> {
  factory _$$SaveAnimeEventImplCopyWith(_$SaveAnimeEventImpl value,
          $Res Function(_$SaveAnimeEventImpl) then) =
      __$$SaveAnimeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Anime anime});
}

/// @nodoc
class __$$SaveAnimeEventImplCopyWithImpl<$Res>
    extends _$AnimeListEventCopyWithImpl<$Res, _$SaveAnimeEventImpl>
    implements _$$SaveAnimeEventImplCopyWith<$Res> {
  __$$SaveAnimeEventImplCopyWithImpl(
      _$SaveAnimeEventImpl _value, $Res Function(_$SaveAnimeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anime = freezed,
  }) {
    return _then(_$SaveAnimeEventImpl(
      freezed == anime
          ? _value.anime
          : anime // ignore: cast_nullable_to_non_nullable
              as Anime,
    ));
  }
}

/// @nodoc

class _$SaveAnimeEventImpl implements SaveAnimeEvent {
  const _$SaveAnimeEventImpl(this.anime);

  @override
  final Anime anime;

  @override
  String toString() {
    return 'AnimeListEvent.saveAnime(anime: $anime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveAnimeEventImpl &&
            const DeepCollectionEquality().equals(other.anime, anime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(anime));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveAnimeEventImplCopyWith<_$SaveAnimeEventImpl> get copyWith =>
      __$$SaveAnimeEventImplCopyWithImpl<_$SaveAnimeEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String status) loadList,
    required TResult Function(Anime anime) saveAnime,
  }) {
    return saveAnime(anime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String status)? loadList,
    TResult? Function(Anime anime)? saveAnime,
  }) {
    return saveAnime?.call(anime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String status)? loadList,
    TResult Function(Anime anime)? saveAnime,
    required TResult orElse(),
  }) {
    if (saveAnime != null) {
      return saveAnime(anime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAnimeListEvent value) loadList,
    required TResult Function(SaveAnimeEvent value) saveAnime,
  }) {
    return saveAnime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAnimeListEvent value)? loadList,
    TResult? Function(SaveAnimeEvent value)? saveAnime,
  }) {
    return saveAnime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAnimeListEvent value)? loadList,
    TResult Function(SaveAnimeEvent value)? saveAnime,
    required TResult orElse(),
  }) {
    if (saveAnime != null) {
      return saveAnime(this);
    }
    return orElse();
  }
}

abstract class SaveAnimeEvent implements AnimeListEvent {
  const factory SaveAnimeEvent(final Anime anime) = _$SaveAnimeEventImpl;

  Anime get anime;
  @JsonKey(ignore: true)
  _$$SaveAnimeEventImplCopyWith<_$SaveAnimeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnimeListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AnimeList animeList) loaded,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AnimeList animeList)? loaded,
    TResult? Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AnimeList animeList)? loaded,
    TResult Function(dynamic error)? error,
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
abstract class _$$LoadingAnimeListStateImplCopyWith<$Res> {
  factory _$$LoadingAnimeListStateImplCopyWith(
          _$LoadingAnimeListStateImpl value,
          $Res Function(_$LoadingAnimeListStateImpl) then) =
      __$$LoadingAnimeListStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingAnimeListStateImplCopyWithImpl<$Res>
    extends _$AnimeListStateCopyWithImpl<$Res, _$LoadingAnimeListStateImpl>
    implements _$$LoadingAnimeListStateImplCopyWith<$Res> {
  __$$LoadingAnimeListStateImplCopyWithImpl(_$LoadingAnimeListStateImpl _value,
      $Res Function(_$LoadingAnimeListStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingAnimeListStateImpl implements _LoadingAnimeListState {
  const _$LoadingAnimeListStateImpl();

  @override
  String toString() {
    return 'AnimeListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingAnimeListStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AnimeList animeList) loaded,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AnimeList animeList)? loaded,
    TResult? Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AnimeList animeList)? loaded,
    TResult Function(dynamic error)? error,
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
  const factory _LoadingAnimeListState() = _$LoadingAnimeListStateImpl;
}

/// @nodoc
abstract class _$$LoadedAnimeListStateImplCopyWith<$Res> {
  factory _$$LoadedAnimeListStateImplCopyWith(_$LoadedAnimeListStateImpl value,
          $Res Function(_$LoadedAnimeListStateImpl) then) =
      __$$LoadedAnimeListStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AnimeList animeList});
}

/// @nodoc
class __$$LoadedAnimeListStateImplCopyWithImpl<$Res>
    extends _$AnimeListStateCopyWithImpl<$Res, _$LoadedAnimeListStateImpl>
    implements _$$LoadedAnimeListStateImplCopyWith<$Res> {
  __$$LoadedAnimeListStateImplCopyWithImpl(_$LoadedAnimeListStateImpl _value,
      $Res Function(_$LoadedAnimeListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? animeList = null,
  }) {
    return _then(_$LoadedAnimeListStateImpl(
      null == animeList
          ? _value.animeList
          : animeList // ignore: cast_nullable_to_non_nullable
              as AnimeList,
    ));
  }
}

/// @nodoc

class _$LoadedAnimeListStateImpl implements _LoadedAnimeListState {
  const _$LoadedAnimeListStateImpl(this.animeList);

  @override
  final AnimeList animeList;

  @override
  String toString() {
    return 'AnimeListState.loaded(animeList: $animeList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedAnimeListStateImpl &&
            (identical(other.animeList, animeList) ||
                other.animeList == animeList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, animeList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedAnimeListStateImplCopyWith<_$LoadedAnimeListStateImpl>
      get copyWith =>
          __$$LoadedAnimeListStateImplCopyWithImpl<_$LoadedAnimeListStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AnimeList animeList) loaded,
    required TResult Function(dynamic error) error,
  }) {
    return loaded(animeList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AnimeList animeList)? loaded,
    TResult? Function(dynamic error)? error,
  }) {
    return loaded?.call(animeList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AnimeList animeList)? loaded,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(animeList);
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
  const factory _LoadedAnimeListState(final AnimeList animeList) =
      _$LoadedAnimeListStateImpl;

  AnimeList get animeList;
  @JsonKey(ignore: true)
  _$$LoadedAnimeListStateImplCopyWith<_$LoadedAnimeListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorAnimeListStateImplCopyWith<$Res> {
  factory _$$ErrorAnimeListStateImplCopyWith(_$ErrorAnimeListStateImpl value,
          $Res Function(_$ErrorAnimeListStateImpl) then) =
      __$$ErrorAnimeListStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$ErrorAnimeListStateImplCopyWithImpl<$Res>
    extends _$AnimeListStateCopyWithImpl<$Res, _$ErrorAnimeListStateImpl>
    implements _$$ErrorAnimeListStateImplCopyWith<$Res> {
  __$$ErrorAnimeListStateImplCopyWithImpl(_$ErrorAnimeListStateImpl _value,
      $Res Function(_$ErrorAnimeListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ErrorAnimeListStateImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ErrorAnimeListStateImpl implements _ErrorAnimeListState {
  const _$ErrorAnimeListStateImpl(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'AnimeListState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorAnimeListStateImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorAnimeListStateImplCopyWith<_$ErrorAnimeListStateImpl> get copyWith =>
      __$$ErrorAnimeListStateImplCopyWithImpl<_$ErrorAnimeListStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(AnimeList animeList) loaded,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(AnimeList animeList)? loaded,
    TResult? Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(AnimeList animeList)? loaded,
    TResult Function(dynamic error)? error,
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
  const factory _ErrorAnimeListState(final dynamic error) =
      _$ErrorAnimeListStateImpl;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$ErrorAnimeListStateImplCopyWith<_$ErrorAnimeListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
