import 'package:graphql_flutter/graphql_flutter.dart';

import '../models/anime.dart';
import '../models/anime_list.dart';

/// Abstract class of AnimeListRepository
abstract class AnimeListRepository {
  //define graphqlclient in constructor
  const AnimeListRepository({required this.graphqlClient});

  final GraphQLClient graphqlClient;

  Future<AnimeList> getAnimeList() async {
    throw UnimplementedError();
  }
  //TODO: Add your methods
}

/// Implementation of the base interface AnimeListRepository for MyAnimeList
class MyAnimeListRepositoryImpl implements AnimeListRepository {
  const MyAnimeListRepositoryImpl({required this.graphqlClient});

  @override
  final GraphQLClient graphqlClient;

  @override
  Future<AnimeList> getAnimeList() async {
    throw UnimplementedError();
  }
}

/// Implementation of the base interface AnimeListRepository for AniList
class AniListRepositoryImpl implements AnimeListRepository {
  const AniListRepositoryImpl({required this.graphqlClient});

  @override
  final GraphQLClient graphqlClient;

  @override
  Future<AnimeList> getAnimeList() async {
    final QueryOptions options = QueryOptions(
      document: gql(readRepositories),
      //TODO: inject the username and status
      variables: <String, dynamic>{
        'userName': "JohnCenaSsjBlue",
        'status': "COMPLETED",
      },
    );

    final QueryResult result = await graphqlClient.query(options);

    if (result.hasException) {
      print(result.exception.toString());
      throw result.exception!;
    }

    final List? animeList = result.data?['MediaListCollection']['lists'][0]['entries'];

    //map the json to the model
    return AniList(
      animeList: animeList!.map((e) => AniListAnime.fromJson(e['media'])).toList(),
    );
  }
}

String readRepositories = '''
query (\$userName: String!, \$status: MediaListStatus) {
  MediaListCollection (userName: \$userName, type: ANIME, status: \$status) {
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
