import 'package:graphql/client.dart';
import 'package:talker/talker.dart';

import '../../../sign_in/data/repositories/authentication_repository.dart';
import '../models/anime.dart';
import '../models/anime_list.dart';

/// Abstract class of AnimeListRepository
abstract class AnimeListRepository {
  //define graphqlclient in constructor
  const AnimeListRepository({required this.graphqlClient, required this.logger, required this.authRepository});

  final GraphQLClient graphqlClient;
  final Talker logger;
  final AuthenticationRepository authRepository;

  Future<AnimeList> getAnimeList(String status) async {
    throw UnimplementedError();
  }

  Future<void> saveAnime(Anime anime) async {
    throw UnimplementedError();
  }
}
