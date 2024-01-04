part of 'dependency_injector.dart';

final List<RepositoryProvider> _repositories = [
  RepositoryProvider<AuthenticationRepository>(
    create: (context) => AnilistAuthenticationRepository(logger: context.read<Talker>()),
  ),
  RepositoryProvider<AnimeListRepository>(
    create: (context) => AniListRepositoryImpl(
        graphqlClient: context.read<GraphQLClient>(), logger: context.read<Talker>(), authRepository: context.read<AuthenticationRepository>()),
  ),
];
