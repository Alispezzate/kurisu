import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:async';

import 'package:kurisu/features/anime_list/data/repositories/anime_list_repository.dart';

import '../../data/models/anime.dart';
import '../../data/models/anime_list.dart';

part 'anime_list_event.dart';

part 'anime_list_state.dart';

part 'anime_list_bloc.freezed.dart';

/// The AnimeListBloc
class AnimeListBloc extends Bloc<AnimeListEvent, AnimeListState> {
  final AnimeListRepository animeListRepository;

  /// Create a new instance of [AnimeListBloc].
  AnimeListBloc({required this.animeListRepository}) : super(const AnimeListState.loading()) {
    on<LoadAnimeListEvent>(_onLoadList);
    on<SaveAnimeEvent>(_onSaveAnime);
  }

  /// Method used to add the [LoadAnimeListEvent] event
  void loadList(String status) => add(AnimeListEvent.loadList(status));

  FutureOr<void> _onLoadList(
    LoadAnimeListEvent event,
    Emitter<AnimeListState> emit,
  ) async {
    emit(const AnimeListState.loading());

    try {
      AnimeList animeList = await animeListRepository.getAnimeList(event.status);
      emit(AnimeListState.loaded(animeList));
    } catch (error) {
      emit(AnimeListState.error(error));
    }
  }

  /// Method used to add the [SaveAnimeEvent] event
  void saveAnime(Anime anime) => add(AnimeListEvent.saveAnime(anime));

  FutureOr<void> _onSaveAnime(
    SaveAnimeEvent event,
    Emitter<AnimeListState> emit,
  ) async {
    // emit(const AnimeListState.loading());

    try {
      await animeListRepository.saveAnime(event.anime);
      // emit(const AnimeListState.loading());
    } catch (error) {
      emit(AnimeListState.error(error));
    }
  }
}
