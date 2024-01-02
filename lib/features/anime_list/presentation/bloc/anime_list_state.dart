part of 'anime_list_bloc.dart';

@freezed
class AnimeListState with _$AnimeListState {
  const factory AnimeListState.loading() = _LoadingAnimeListState;

  const factory AnimeListState.loaded(AnimeList animeList) = _LoadedAnimeListState;

  const factory AnimeListState.error(dynamic error) = _ErrorAnimeListState;
}
