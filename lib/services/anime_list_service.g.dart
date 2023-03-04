// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_list_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeList _$AnimeListFromJson(Map<String, dynamic> json) => AnimeList(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimeListToJson(AnimeList instance) => <String, dynamic>{
      'data': instance.data.toJson(),
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      mediaListCollection: MediaListCollection.fromJson(
          json['mediaListCollection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'mediaListCollection': instance.mediaListCollection.toJson(),
    };

MediaListCollection _$MediaListCollectionFromJson(Map<String, dynamic> json) =>
    MediaListCollection(
      lists: (json['lists'] as List<dynamic>)
          .map((e) => ListElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MediaListCollectionToJson(
        MediaListCollection instance) =>
    <String, dynamic>{
      'lists': instance.lists.map((e) => e.toJson()).toList(),
    };

ListElement _$ListElementFromJson(Map<String, dynamic> json) => ListElement(
      entries: (json['entries'] as List<dynamic>)
          .map((e) => Entry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListElementToJson(ListElement instance) =>
    <String, dynamic>{
      'entries': instance.entries.map((e) => e.toJson()).toList(),
    };

Entry _$EntryFromJson(Map<String, dynamic> json) => Entry(
      id: json['id'] as int,
      status: $enumDecode(_$EntryStatusEnumMap, json['status']),
      score: json['score'] as int,
      progress: json['progress'] as int,
      repeat: json['repeat'] as int,
      private: json['private'] as bool,
      notes: json['notes'],
      startedAt:
          CompletedAt.fromJson(json['startedAt'] as Map<String, dynamic>),
      completedAt:
          CompletedAt.fromJson(json['completedAt'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] as int,
      media: Media.fromJson(json['media'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EntryToJson(Entry instance) => <String, dynamic>{
      'id': instance.id,
      'status': _$EntryStatusEnumMap[instance.status]!,
      'score': instance.score,
      'progress': instance.progress,
      'repeat': instance.repeat,
      'private': instance.private,
      'notes': instance.notes,
      'startedAt': instance.startedAt.toJson(),
      'completedAt': instance.completedAt.toJson(),
      'updatedAt': instance.updatedAt,
      'media': instance.media.toJson(),
    };

const _$EntryStatusEnumMap = {
  EntryStatus.COMPLETED: 'COMPLETED',
  EntryStatus.PLANNING: 'PLANNING',
  EntryStatus.DROPPED: 'DROPPED',
};

CompletedAt _$CompletedAtFromJson(Map<String, dynamic> json) => CompletedAt(
      year: json['year'] as int?,
      month: json['month'] as int?,
      day: json['day'] as int?,
    );

Map<String, dynamic> _$CompletedAtToJson(CompletedAt instance) =>
    <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
    };

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      id: json['id'] as int,
      idMal: json['idMal'] as int,
      title: Title.fromJson(json['title'] as Map<String, dynamic>),
      format: $enumDecode(_$FormatEnumMap, json['format']),
      status: $enumDecode(_$MediaStatusEnumMap, json['status']),
      description: json['description'] as String,
      startDate:
          CompletedAt.fromJson(json['startDate'] as Map<String, dynamic>),
      endDate: CompletedAt.fromJson(json['endDate'] as Map<String, dynamic>),
      episodes: json['episodes'] as int?,
      duration: json['duration'] as int,
      countryOfOrigin:
          $enumDecode(_$CountryOfOriginEnumMap, json['countryOfOrigin']),
      trailer: json['trailer'] == null
          ? null
          : Trailer.fromJson(json['trailer'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] as int,
      coverImage:
          CoverImage.fromJson(json['coverImage'] as Map<String, dynamic>),
      genres: (json['genres'] as List<dynamic>)
          .map((e) => $enumDecode(_$GenreEnumMap, e))
          .toList(),
      synonyms:
          (json['synonyms'] as List<dynamic>).map((e) => e as String).toList(),
      averageScore: json['averageScore'] as int,
      popularity: json['popularity'] as int,
      studios: Studios.fromJson(json['studios'] as Map<String, dynamic>),
      nextAiringEpisode: json['nextAiringEpisode'] == null
          ? null
          : NextAiringEpisode.fromJson(
              json['nextAiringEpisode'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'id': instance.id,
      'idMal': instance.idMal,
      'title': instance.title.toJson(),
      'format': _$FormatEnumMap[instance.format]!,
      'status': _$MediaStatusEnumMap[instance.status]!,
      'description': instance.description,
      'startDate': instance.startDate.toJson(),
      'endDate': instance.endDate.toJson(),
      'episodes': instance.episodes,
      'duration': instance.duration,
      'countryOfOrigin': _$CountryOfOriginEnumMap[instance.countryOfOrigin]!,
      'trailer': instance.trailer?.toJson(),
      'updatedAt': instance.updatedAt,
      'coverImage': instance.coverImage.toJson(),
      'genres': instance.genres.map((e) => _$GenreEnumMap[e]!).toList(),
      'synonyms': instance.synonyms,
      'averageScore': instance.averageScore,
      'popularity': instance.popularity,
      'studios': instance.studios.toJson(),
      'nextAiringEpisode': instance.nextAiringEpisode?.toJson(),
    };

const _$FormatEnumMap = {
  Format.TV: 'TV',
  Format.OVA: 'OVA',
  Format.MOVIE: 'MOVIE',
  Format.TV_SHORT: 'TV_SHORT',
  Format.ONA: 'ONA',
  Format.SPECIAL: 'SPECIAL',
};

const _$MediaStatusEnumMap = {
  MediaStatus.FINISHED: 'FINISHED',
  MediaStatus.RELEASING: 'RELEASING',
};

const _$CountryOfOriginEnumMap = {
  CountryOfOrigin.JP: 'JP',
  CountryOfOrigin.CN: 'CN',
};

const _$GenreEnumMap = {
  Genre.DRAMA: 'DRAMA',
  Genre.SLICE_OF_LIFE: 'SLICE_OF_LIFE',
  Genre.ACTION: 'ACTION',
  Genre.HORROR: 'HORROR',
  Genre.MYSTERY: 'MYSTERY',
  Genre.SUPERNATURAL: 'SUPERNATURAL',
  Genre.COMEDY: 'COMEDY',
  Genre.ROMANCE: 'ROMANCE',
  Genre.PSYCHOLOGICAL: 'PSYCHOLOGICAL',
  Genre.THRILLER: 'THRILLER',
  Genre.HENTAI: 'HENTAI',
  Genre.ADVENTURE: 'ADVENTURE',
  Genre.FANTASY: 'FANTASY',
  Genre.SCI_FI: 'SCI_FI',
  Genre.MECHA: 'MECHA',
  Genre.ECCHI: 'ECCHI',
  Genre.SPORTS: 'SPORTS',
  Genre.MUSIC: 'MUSIC',
  Genre.MAHOU_SHOUJO: 'MAHOU_SHOUJO',
};

CoverImage _$CoverImageFromJson(Map<String, dynamic> json) => CoverImage(
      large: json['large'] as String,
    );

Map<String, dynamic> _$CoverImageToJson(CoverImage instance) =>
    <String, dynamic>{
      'large': instance.large,
    };

NextAiringEpisode _$NextAiringEpisodeFromJson(Map<String, dynamic> json) =>
    NextAiringEpisode(
      airingAt: json['airingAt'] as int,
      episode: json['episode'] as int,
    );

Map<String, dynamic> _$NextAiringEpisodeToJson(NextAiringEpisode instance) =>
    <String, dynamic>{
      'airingAt': instance.airingAt,
      'episode': instance.episode,
    };

Studios _$StudiosFromJson(Map<String, dynamic> json) => Studios(
      edges: (json['edges'] as List<dynamic>)
          .map((e) => Edge.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StudiosToJson(Studios instance) => <String, dynamic>{
      'edges': instance.edges.map((e) => e.toJson()).toList(),
    };

Edge _$EdgeFromJson(Map<String, dynamic> json) => Edge(
      isMain: json['isMain'] as bool,
      node: Node.fromJson(json['node'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EdgeToJson(Edge instance) => <String, dynamic>{
      'isMain': instance.isMain,
      'node': instance.node.toJson(),
    };

Node _$NodeFromJson(Map<String, dynamic> json) => Node(
      name: json['name'] as String,
    );

Map<String, dynamic> _$NodeToJson(Node instance) => <String, dynamic>{
      'name': instance.name,
    };

Title _$TitleFromJson(Map<String, dynamic> json) => Title(
      romaji: json['romaji'] as String,
      english: json['english'] as String?,
      native: json['native'] as String?,
      userPreferred: json['userPreferred'] as String,
    );

Map<String, dynamic> _$TitleToJson(Title instance) => <String, dynamic>{
      'romaji': instance.romaji,
      'english': instance.english,
      'native': instance.native,
      'userPreferred': instance.userPreferred,
    };

Trailer _$TrailerFromJson(Map<String, dynamic> json) => Trailer(
      id: json['id'] as String,
      site: $enumDecode(_$SiteEnumMap, json['site']),
    );

Map<String, dynamic> _$TrailerToJson(Trailer instance) => <String, dynamic>{
      'id': instance.id,
      'site': _$SiteEnumMap[instance.site]!,
    };

const _$SiteEnumMap = {
  Site.YOUTUBE: 'YOUTUBE',
};

EnumValues<T> _$EnumValuesFromJson<T>(Map<String, dynamic> json) =>
    EnumValues<T>(
      json['map'] as Map<String, dynamic>,
    )..reverseMap = Map<String, String>.from(json['reverseMap'] as Map);

Map<String, dynamic> _$EnumValuesToJson<T>(EnumValues<T> instance) =>
    <String, dynamic>{
      'map': instance.map,
      'reverseMap': instance.reverseMap,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _AnimeListService implements AnimeListService {
  _AnimeListService(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://graphql.anilist.co';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<AnimeList> getAnimeList(
    query,
    variables,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {
      'query': query,
      'variables': variables,
    };
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<AnimeList>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AnimeList.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
