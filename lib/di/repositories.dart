part of 'dependency_injector.dart';

final List<RepositoryProvider> _repositories = [
  RepositoryProvider<AnimeListRepository>(
    create: (context) => AniListRepositoryImpl(graphqlClient: context.read<GraphQLClient>()),
  ),
  RepositoryProvider<AuthenticationRepository>(
    create: (context) => const AuthenticationRepositoryImpl(),
  ),
];
