import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:kurisu/consts.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:kurisu/features/sign_in/data/repositories/authentication_repository.dart';
import 'package:pine/pine.dart';
import 'package:provider/single_child_widget.dart';
import 'package:talker/talker.dart';

import '../features/anime_list/data/repositories/anilist_anime_list_repository.dart';
import '../features/anime_list/presentation/bloc/anime_list_bloc.dart';
import '../features/anime_list/data/repositories/anime_list_repository.dart';
import '../features/sign_in/data/repositories/anilist_authentication_repository.dart';
import '../features/sign_in/presentation/bloc/sign_in_bloc.dart';

part 'blocs.dart';

part 'mappers.dart';

part 'providers.dart';

part 'repositories.dart';

class DependencyInjector extends StatelessWidget {
  final Widget child;

  const DependencyInjector({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => DependencyInjectorHelper(
        blocs: _blocs,
        mappers: _mappers,
        providers: _providers,
        repositories: _repositories,
        child: child,
      );
}
