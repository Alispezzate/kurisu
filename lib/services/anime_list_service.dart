// To parse this JSON data, do
//
//     final animeList = animeListFromJson(jsonString);

import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart' as retrofit;

part 'anime_list_service.g.dart';

//prepare graphql query
String query = '''
query (\$userName: String!) {
  MediaListCollection (userName: \$userName, type: ANIME) {
    lists {
      entries {
        ...mediaListFragment
      }
    }
  }
}

fragment mediaListFragment on MediaList {
  id
status
score(format: POINT_100)
progress
repeat
private
notes
startedAt { year month day }
completedAt { year month day }
updatedAt
  media {
    ...mediaFragment
  }
}

fragment mediaFragment on Media {
  id
idMal
title {
  romaji(stylised: true)
  english(stylised: true)
  native(stylised: true)
  userPreferred
}
format
status
description
startDate { year month day }
endDate { year month day }
episodes
duration
countryOfOrigin
trailer { id site }
updatedAt
coverImage { large }
genres
synonyms
averageScore
popularity
studios { edges { isMain node { name } } }
nextAiringEpisode { airingAt episode }
}
''';

//create graphql query variables
Map<String, dynamic> variables = {
  "userName": "username",
};

//create graphql service
@retrofit.RestApi(baseUrl: "https://graphql.anilist.co")
abstract class AnimeListService {
  factory AnimeListService(Dio dio, {String? baseUrl}) =>
      _AnimeListService(dio, baseUrl: baseUrl);

  @retrofit.POST("/")
  Future<AnimeList> getAnimeList(
    @retrofit.Field() String query,
    @retrofit.Field() Map<String, dynamic> variables,
  );
}

@JsonSerializable(explicitToJson: true)
class AnimeList {
  AnimeList({
    required this.data,
  });

  Data data;

  factory AnimeList.fromRawJson(String str) =>
      AnimeList.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AnimeList.fromJson(Map<String, dynamic> json) => AnimeList(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

@JsonSerializable(explicitToJson: true)
class Data {
  Data({
    required this.mediaListCollection,
  });

  MediaListCollection mediaListCollection;

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        mediaListCollection:
            MediaListCollection.fromJson(json["MediaListCollection"]),
      );

  Map<String, dynamic> toJson() => {
        "MediaListCollection": mediaListCollection.toJson(),
      };
}

@JsonSerializable(explicitToJson: true)
class MediaListCollection {
  MediaListCollection({
    required this.lists,
  });

  List<ListElement> lists;

  factory MediaListCollection.fromRawJson(String str) =>
      MediaListCollection.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MediaListCollection.fromJson(Map<String, dynamic> json) =>
      MediaListCollection(
        lists: List<ListElement>.from(
            json["lists"].map((x) => ListElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "lists": List<dynamic>.from(lists.map((x) => x.toJson())),
      };
}

@JsonSerializable(explicitToJson: true)
class ListElement {
  ListElement({
    required this.entries,
  });

  List<Entry> entries;

  factory ListElement.fromRawJson(String str) =>
      ListElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
        entries:
            List<Entry>.from(json["entries"].map((x) => Entry.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "entries": List<dynamic>.from(entries.map((x) => x.toJson())),
      };
}

@JsonSerializable(explicitToJson: true)
class Entry {
  Entry({
    required this.id,
    required this.status,
    required this.score,
    required this.progress,
    required this.repeat,
    required this.private,
    this.notes,
    required this.startedAt,
    required this.completedAt,
    required this.updatedAt,
    required this.media,
  });

  int id;
  EntryStatus status;
  int score;
  int progress;
  int repeat;
  bool private;
  dynamic notes;
  CompletedAt startedAt;
  CompletedAt completedAt;
  int updatedAt;
  Media media;

  factory Entry.fromRawJson(String str) => Entry.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Entry.fromJson(Map<String, dynamic> json) => Entry(
        id: json["id"],
        status: entryStatusValues.map[json["status"]]!,
        score: json["score"],
        progress: json["progress"],
        repeat: json["repeat"],
        private: json["private"],
        notes: json["notes"],
        startedAt: CompletedAt.fromJson(json["startedAt"]),
        completedAt: CompletedAt.fromJson(json["completedAt"]),
        updatedAt: json["updatedAt"],
        media: Media.fromJson(json["media"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "status": entryStatusValues.reverse[status],
        "score": score,
        "progress": progress,
        "repeat": repeat,
        "private": private,
        "notes": notes,
        "startedAt": startedAt.toJson(),
        "completedAt": completedAt.toJson(),
        "updatedAt": updatedAt,
        "media": media.toJson(),
      };
}

@JsonSerializable(explicitToJson: true)
class CompletedAt {
  CompletedAt({
    this.year,
    this.month,
    this.day,
  });

  int? year;
  int? month;
  int? day;

  factory CompletedAt.fromRawJson(String str) =>
      CompletedAt.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CompletedAt.fromJson(Map<String, dynamic> json) => CompletedAt(
        year: json["year"],
        month: json["month"],
        day: json["day"],
      );

  Map<String, dynamic> toJson() => {
        "year": year,
        "month": month,
        "day": day,
      };
}

@JsonSerializable(explicitToJson: true)
class Media {
  Media({
    required this.id,
    required this.idMal,
    required this.title,
    required this.format,
    required this.status,
    required this.description,
    required this.startDate,
    required this.endDate,
    this.episodes,
    required this.duration,
    required this.countryOfOrigin,
    this.trailer,
    required this.updatedAt,
    required this.coverImage,
    required this.genres,
    required this.synonyms,
    required this.averageScore,
    required this.popularity,
    required this.studios,
    this.nextAiringEpisode,
  });

  int id;
  int idMal;
  Title title;
  Format format;
  MediaStatus status;
  String description;
  CompletedAt startDate;
  CompletedAt endDate;
  int? episodes;
  int duration;
  CountryOfOrigin countryOfOrigin;
  Trailer? trailer;
  int updatedAt;
  CoverImage coverImage;
  List<Genre> genres;
  List<String> synonyms;
  int averageScore;
  int popularity;
  Studios studios;
  NextAiringEpisode? nextAiringEpisode;

  factory Media.fromRawJson(String str) => Media.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        id: json["id"],
        idMal: json["idMal"],
        title: Title.fromJson(json["title"]),
        format: formatValues.map[json["format"]]!,
        status: mediaStatusValues.map[json["status"]]!,
        description: json["description"],
        startDate: CompletedAt.fromJson(json["startDate"]),
        endDate: CompletedAt.fromJson(json["endDate"]),
        episodes: json["episodes"],
        duration: json["duration"],
        countryOfOrigin: countryOfOriginValues.map[json["countryOfOrigin"]]!,
        trailer:
            json["trailer"] == null ? null : Trailer.fromJson(json["trailer"]),
        updatedAt: json["updatedAt"],
        coverImage: CoverImage.fromJson(json["coverImage"]),
        genres:
            List<Genre>.from(json["genres"].map((x) => genreValues.map[x]!)),
        synonyms: List<String>.from(json["synonyms"].map((x) => x)),
        averageScore: json["averageScore"],
        popularity: json["popularity"],
        studios: Studios.fromJson(json["studios"]),
        nextAiringEpisode: json["nextAiringEpisode"] == null
            ? null
            : NextAiringEpisode.fromJson(json["nextAiringEpisode"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "idMal": idMal,
        "title": title.toJson(),
        "format": formatValues.reverse[format],
        "status": mediaStatusValues.reverse[status],
        "description": description,
        "startDate": startDate.toJson(),
        "endDate": endDate.toJson(),
        "episodes": episodes,
        "duration": duration,
        "countryOfOrigin": countryOfOriginValues.reverse[countryOfOrigin],
        "trailer": trailer?.toJson(),
        "updatedAt": updatedAt,
        "coverImage": coverImage.toJson(),
        "genres": List<dynamic>.from(genres.map((x) => genreValues.reverse[x])),
        "synonyms": List<dynamic>.from(synonyms.map((x) => x)),
        "averageScore": averageScore,
        "popularity": popularity,
        "studios": studios.toJson(),
        "nextAiringEpisode": nextAiringEpisode?.toJson(),
      };
}

enum CountryOfOrigin { JP, CN }

final countryOfOriginValues =
    EnumValues({"CN": CountryOfOrigin.CN, "JP": CountryOfOrigin.JP});

@JsonSerializable(explicitToJson: true)
class CoverImage {
  CoverImage({
    required this.large,
  });

  String large;

  factory CoverImage.fromRawJson(String str) =>
      CoverImage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CoverImage.fromJson(Map<String, dynamic> json) => CoverImage(
        large: json["large"],
      );

  Map<String, dynamic> toJson() => {
        "large": large,
      };
}

enum Format { TV, OVA, MOVIE, TV_SHORT, ONA, SPECIAL }

final formatValues = EnumValues({
  "MOVIE": Format.MOVIE,
  "ONA": Format.ONA,
  "OVA": Format.OVA,
  "SPECIAL": Format.SPECIAL,
  "TV": Format.TV,
  "TV_SHORT": Format.TV_SHORT
});

enum Genre {
  DRAMA,
  SLICE_OF_LIFE,
  ACTION,
  HORROR,
  MYSTERY,
  SUPERNATURAL,
  COMEDY,
  ROMANCE,
  PSYCHOLOGICAL,
  THRILLER,
  HENTAI,
  ADVENTURE,
  FANTASY,
  SCI_FI,
  MECHA,
  ECCHI,
  SPORTS,
  MUSIC,
  MAHOU_SHOUJO
}

final genreValues = EnumValues({
  "Action": Genre.ACTION,
  "Adventure": Genre.ADVENTURE,
  "Comedy": Genre.COMEDY,
  "Drama": Genre.DRAMA,
  "Ecchi": Genre.ECCHI,
  "Fantasy": Genre.FANTASY,
  "Hentai": Genre.HENTAI,
  "Horror": Genre.HORROR,
  "Mahou Shoujo": Genre.MAHOU_SHOUJO,
  "Mecha": Genre.MECHA,
  "Music": Genre.MUSIC,
  "Mystery": Genre.MYSTERY,
  "Psychological": Genre.PSYCHOLOGICAL,
  "Romance": Genre.ROMANCE,
  "Sci-Fi": Genre.SCI_FI,
  "Slice of Life": Genre.SLICE_OF_LIFE,
  "Sports": Genre.SPORTS,
  "Supernatural": Genre.SUPERNATURAL,
  "Thriller": Genre.THRILLER
});

@JsonSerializable(explicitToJson: true)
class NextAiringEpisode {
  NextAiringEpisode({
    required this.airingAt,
    required this.episode,
  });

  int airingAt;
  int episode;

  factory NextAiringEpisode.fromRawJson(String str) =>
      NextAiringEpisode.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NextAiringEpisode.fromJson(Map<String, dynamic> json) =>
      NextAiringEpisode(
        airingAt: json["airingAt"],
        episode: json["episode"],
      );

  Map<String, dynamic> toJson() => {
        "airingAt": airingAt,
        "episode": episode,
      };
}

enum MediaStatus { FINISHED, RELEASING }

final mediaStatusValues = EnumValues(
    {"FINISHED": MediaStatus.FINISHED, "RELEASING": MediaStatus.RELEASING});

@JsonSerializable(explicitToJson: true)
class Studios {
  Studios({
    required this.edges,
  });

  List<Edge> edges;

  factory Studios.fromRawJson(String str) => Studios.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Studios.fromJson(Map<String, dynamic> json) => Studios(
        edges: List<Edge>.from(json["edges"].map((x) => Edge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "edges": List<dynamic>.from(edges.map((x) => x.toJson())),
      };
}

@JsonSerializable(explicitToJson: true)
class Edge {
  Edge({
    required this.isMain,
    required this.node,
  });

  bool isMain;
  Node node;

  factory Edge.fromRawJson(String str) => Edge.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Edge.fromJson(Map<String, dynamic> json) => Edge(
        isMain: json["isMain"],
        node: Node.fromJson(json["node"]),
      );

  Map<String, dynamic> toJson() => {
        "isMain": isMain,
        "node": node.toJson(),
      };
}

@JsonSerializable(explicitToJson: true)
class Node {
  Node({
    required this.name,
  });

  String name;

  factory Node.fromRawJson(String str) => Node.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Node.fromJson(Map<String, dynamic> json) => Node(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}

@JsonSerializable(explicitToJson: true)
class Title {
  Title({
    required this.romaji,
    this.english,
    this.native,
    required this.userPreferred,
  });

  String romaji;
  String? english;
  String? native;
  String userPreferred;

  factory Title.fromRawJson(String str) => Title.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Title.fromJson(Map<String, dynamic> json) => Title(
        romaji: json["romaji"],
        english: json["english"],
        native: json["native"],
        userPreferred: json["userPreferred"],
      );

  Map<String, dynamic> toJson() => {
        "romaji": romaji,
        "english": english,
        "native": native,
        "userPreferred": userPreferred,
      };
}

@JsonSerializable(explicitToJson: true)
class Trailer {
  Trailer({
    required this.id,
    required this.site,
  });

  String id;
  Site site;

  factory Trailer.fromRawJson(String str) => Trailer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Trailer.fromJson(Map<String, dynamic> json) => Trailer(
        id: json["id"],
        site: siteValues.map[json["site"]]!,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "site": siteValues.reverse[site],
      };
}

enum Site { YOUTUBE }

final siteValues = EnumValues({"youtube": Site.YOUTUBE});

enum EntryStatus { COMPLETED, PLANNING, DROPPED }

final entryStatusValues = EnumValues({
  "COMPLETED": EntryStatus.COMPLETED,
  "DROPPED": EntryStatus.DROPPED,
  "PLANNING": EntryStatus.PLANNING
});

@JsonSerializable(explicitToJson: true)
class EnumValues<T> {
  Map<String, dynamic> map;
  late Map<dynamic, String> reverseMap;

  EnumValues(this.map);

  Map<dynamic, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
