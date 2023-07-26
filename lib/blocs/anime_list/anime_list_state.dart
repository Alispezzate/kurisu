part of 'anime_list_bloc.dart';

@freezed
class AnimeListState with _$AnimeListState {
  const factory AnimeListState.loading() = _LoadingAnimeListState;

  const factory AnimeListState.loaded() = _LoadedAnimeListState;

  const factory AnimeListState.error() = _ErrorAnimeListState;
}
