import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';

import '../models/anilist_anime.dart';
import '../models/anilist_anime_list.dart';
import '../models/anime_list.dart';

/// Abstract class of AnimeListRepository
abstract class AnimeListRepository {
  //define graphqlclient in constructor
  const AnimeListRepository({required this.graphqlClient});

  final GraphQLClient graphqlClient;

  Future<AnimeList> getAnimeList(String status) async {
    throw UnimplementedError();
  }
}

/// Implementation of the base interface AnimeListRepository for MyAnimeList
class MyAnimeListRepositoryImpl implements AnimeListRepository {
  const MyAnimeListRepositoryImpl({required this.graphqlClient});

  @override
  final GraphQLClient graphqlClient;

  @override
  Future<AnimeList> getAnimeList(String status) async {
    throw UnimplementedError();
  }
}

/// Implementation of the base interface AnimeListRepository for AniList
class AniListRepositoryImpl implements AnimeListRepository {
  const AniListRepositoryImpl({required this.graphqlClient});

  @override
  final GraphQLClient graphqlClient;

  @override
  Future<AnimeList> getAnimeList(String status) async {
    final QueryOptions options = QueryOptions(
      document: gql(readRepositories),
      //TODO: inject the username
      variables: <String, dynamic>{
        "userName": "JohnCenaSsjBlue",
        "status": status,
        //TODO: load both current and rewatching
      },
    );
    try {
      final QueryResult result = await graphqlClient.query(options);

      if (result.hasException) {
        if (kDebugMode) print(result.exception.toString());
        throw result.exception!;
      }

      var animeLists = result.data?['MediaListCollection']?['lists'];
      if (animeLists == null || animeLists.isEmpty) {
        return const AniList(animeList: []);
      }
      final List animeList = animeLists[0]['entries'];

      //map the json to the model
      return AniList(
        animeList: animeList.map((e) => AniListAnime.fromJson(e)).toList(),
      );
    } on PartialDataException catch (e) {
      // Gestisci l'eccezione in modo specifico per ottenere ulteriori dettagli
      if (kDebugMode) print("PartialDataException: ${e.path}");
      // Altri passaggi di gestione dell'eccezione, se necessario...
      return Future.error(e);
    } catch (e) {
      // Gestione di altre eccezioni
      if (kDebugMode) print("Altro tipo di eccezione: $e");
      return Future.error(e);
    }
  }
}

String readRepositories =
    '''
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
      season
      seasonYear
      synonyms
      averageScore
      popularity
      studios { edges { isMain node { name } } }
      nextAiringEpisode { airingAt episode }
  }
''';
