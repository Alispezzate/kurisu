import 'package:graphql/client.dart';
import 'package:kurisu/features/anime_list/data/models/anilist_anime.dart';
import 'package:kurisu/features/anime_list/data/models/anilist_anime_list.dart';
import 'package:kurisu/features/anime_list/data/models/anime.dart';
import 'package:kurisu/features/anime_list/data/models/anime_list.dart';
import 'package:kurisu/features/anime_list/data/repositories/anime_list_repository.dart';
import 'package:kurisu/features/sign_in/data/repositories/authentication_repository.dart';
import 'package:talker/talker.dart';

/// Implementation of the base interface AnimeListRepository for AniList
class AniListRepositoryImpl implements AnimeListRepository {
  const AniListRepositoryImpl({required this.graphqlClient, required this.logger, required this.authRepository});

  @override
  final GraphQLClient graphqlClient;
  @override
  final Talker logger;
  @override
  final AuthenticationRepository authRepository;

  @override
  Future<AnimeList> getAnimeList(String status) async {
    final QueryOptions options = QueryOptions(
      cacheRereadPolicy: CacheRereadPolicy.mergeOptimistic,
      document: gql(readRepositories),
      fetchPolicy: FetchPolicy.networkOnly,
      variables: <String, dynamic>{
        "userName": await authRepository.getUsername(),
        "status": status,
        //TODO: load both current and rewatching
      },
    );
    try {
      final QueryResult result = await graphqlClient.query(options);

      if (result.hasException) {
        logger.error(result.exception.toString());
        throw result.exception!;
      }

      final List animeList = result.data?['MediaListCollection']?['lists'][0]['entries'] as List;
      if (animeList.isEmpty) {
        return const AniList(animeList: []);
      }

      //map the json to the model
      return AniList(
        animeList: List<AniListAnime>.from(animeList.map((dynamic json) => AniListAnime.fromJson(json as Map<String, dynamic>))),
      );
      // return AniList(animeList: []);
    } on PartialDataException catch (e) {
      logger.error("PartialDataException: ${e.path}");
      return Future.error(e);
    } catch (e) {
      logger.error("Exception: $e");
      return Future.error(e);
    }
  }

  @override
  Future<void> saveAnime(Anime anime) async {
    final MutationOptions options = MutationOptions(
      document: gql(saveAnimeQuery),
      variables: <String, dynamic>{
        "id": anime.id,
        "mediaId": anime.media?.id,
        "status": anime.status,
        "scoreRaw": anime.score,
        "progress": anime.progress,
        "repeat": anime.repeat,
        "notes": anime.notes,
        // "startedAt": anime.startedAt,
        // "completedAt": anime.completedAt,//TODO: find a way to save dates
      },
    );

    await graphqlClient.mutate(options).then((QueryResult result) {
      if (result.hasException) {
        logger.error(result.exception.toString());
        throw result.exception!;
      }
    });
  }
}

//TODO: move graphql queries to a separate file
String saveAnimeQuery = '''
mutation (
    \$id: Int,
    \$mediaId: Int,
    \$status: MediaListStatus,
    \$scoreRaw: Int,
    \$progress: Int,
    \$repeat: Int,
    \$notes: String,) {
  SaveMediaListEntry (
      id: \$id,
      mediaId: \$mediaId,
      status: \$status,
      scoreRaw: \$scoreRaw,
      progress: \$progress,
      repeat: \$repeat,
      notes: \$notes,) {
        id
        status
        score(format: POINT_100)
        progress
        repeat
        private
        notes
        updatedAt
    media {
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
  }
}
''';

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
      season
      seasonYear
      synonyms
      averageScore
      popularity
      studios { edges { isMain node { name } } }
      nextAiringEpisode { airingAt episode }
  }
''';
