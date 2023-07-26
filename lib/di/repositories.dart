part of 'dependency_injector.dart';

final List<RepositoryProvider> _repositories = [
  RepositoryProvider<AnimeListRepository>(
    create: (context) => const AniListRepositoryImpl(),
  ),
];
