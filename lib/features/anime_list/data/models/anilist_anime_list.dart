//define anilist implementation
import 'package:kurisu/features/anime_list/data/models/anilist_anime.dart';
import 'package:kurisu/features/anime_list/data/models/anime.dart';
import 'package:kurisu/features/anime_list/data/models/anime_list.dart';

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
