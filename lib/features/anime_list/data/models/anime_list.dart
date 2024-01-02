import 'anime.dart';

abstract class AnimeList {
  const AnimeList({required this.animeList});

  final List<Anime> animeList;

  //define to json method
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }

  //define from json method
  factory AnimeList.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError();
  }
}
