import 'package:freezed_annotation/freezed_annotation.dart';
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

//define my anime list implementation
class MyAnimeList implements AnimeList {
  const MyAnimeList({required this.animeList});

  @override
  final List<Anime> animeList;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'animeList': animeList.map((e) => e.toJson()).toList(),
      };

  factory MyAnimeList.fromJson(Map<String, dynamic> json) {
    return MyAnimeList(
      animeList: (json['animeList'] as List<dynamic>).map((e) => Anime.fromJson(e as Map<String, dynamic>)).toList(),
    );
  }
}

//define anilist implementation
class AniList implements AnimeList {
  const AniList({required this.animeList});

  @override
  final List<Anime> animeList;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'animeList': animeList.map((e) => e.toJson()).toList(),
      };

  factory AniList.fromJson(Map<String, dynamic> json) {
    return AniList(
      animeList: (json['animeList'] as List<dynamic>).map((e) => Anime.fromJson(e as Map<String, dynamic>)).toList(),
    );
  }
}
