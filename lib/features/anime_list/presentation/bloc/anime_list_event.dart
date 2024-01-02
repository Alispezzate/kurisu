part of 'anime_list_bloc.dart';

@freezed
class AnimeListEvent with _$AnimeListEvent {
  const factory AnimeListEvent.loadList(String status) = LoadAnimeListEvent;
}
