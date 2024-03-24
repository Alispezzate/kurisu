import 'package:kurisu/features/anime_list/data/models/anime.dart';

abstract class AnimeList {
  const AnimeList({required this.animeList});

  final List<Anime> animeList;

  //define to json method
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }

  //define from json method
  factory AnimeList.fromJson() {
    throw UnimplementedError();
  }
}
