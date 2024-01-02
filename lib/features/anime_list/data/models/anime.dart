import 'package:freezed_annotation/freezed_annotation.dart';

abstract class Anime {
  const Anime({
    required this.title,
    required this.genre,
    required this.episodes,
  });

  final String title;
  final String genre;
  final int episodes;

  //define to json method
  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }

  //define from json method
  factory Anime.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError();
  }
}

//define my anime list implementation
class MyAnime implements Anime {
  const MyAnime({
    required this.title,
    required this.genre,
    required this.episodes,
  });

  @override
  final String title;
  @override
  final String genre;
  @override
  final int episodes;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'genre': genre,
        'episodes': episodes,
      };

  factory MyAnime.fromJson(Map<String, dynamic> json) {
    return MyAnime(
      title: json['title'] as String,
      genre: json['genre'] as String,
      episodes: json['episodes'] as int,
    );
  }
}

//define anilist implementation
class AniListAnime implements Anime {
  const AniListAnime({
    required this.title,
    required this.genre,
    required this.episodes,
  });

  @override
  final String title;
  @override
  final String genre;
  @override
  final int episodes;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'genre': genre,
        'episodes': episodes,
      };

  factory AniListAnime.fromJson(Map<String, dynamic> json) {
    return AniListAnime(
      title: json['title']['romaji'] as String,
      genre: json['genres'][0] as String,
      episodes: json['episodes'] ?? 0 as int,
    );
  }
}
