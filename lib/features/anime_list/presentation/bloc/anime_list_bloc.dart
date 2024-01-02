import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:async';

import 'package:kurisu/features/anime_list/data/repositories/anime_list_repository.dart';

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
  }

  /// Method used to add the [LoadAnimeListEvent] event
  void loadList() => add(const AnimeListEvent.loadList());

  FutureOr<void> _onLoadList(
    LoadAnimeListEvent event,
    Emitter<AnimeListState> emit,
  ) {
    emit(const AnimeListState.loading());
    animeListRepository.getAnimeList().then((value) {
      emit(AnimeListState.loaded(value));
    }).catchError((error) {
      emit(AnimeListState.error(error));
    });
  }
}
