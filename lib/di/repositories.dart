part of 'dependency_injector.dart';

final List<RepositoryProvider> _repositories = [
  RepositoryProvider<AnimeListRepository>(
    create: (context) => AniListRepositoryImpl(graphqlClient: context.read<GraphQLClient>(), logger: context.read<Talker>()),
  ),
  RepositoryProvider<AuthenticationRepository>(
    create: (context) => const AuthenticationRepositoryImpl(),
  ),
];
