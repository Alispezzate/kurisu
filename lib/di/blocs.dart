part of 'dependency_injector.dart';

final List<BlocProvider> _blocs = [
  //AnimeListBloc
  BlocProvider<AnimeListBloc>(
    create: (context) => AnimeListBloc(
      animeListRepository: context.read<AnimeListRepository>(),
    ),
  ),
];
