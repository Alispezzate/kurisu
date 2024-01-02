//define anilist implementation
import 'anilist_anime.dart';
import 'anime.dart';
import 'anime_list.dart';

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
      animeList: (json['animeList'] as List<dynamic>).map((e) => AniListAnime.fromJson(e as Map<String, dynamic>)).toList(),
    );
  }
}
