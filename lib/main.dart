import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:kurisu/di/dependency_injector.dart';
import 'package:kurisu/features/anime_list/presentation/pages/anime_list_page.dart';
import 'package:kurisu/features/sign_in/presentation/bloc/sign_in_bloc.dart';
import 'package:kurisu/features/sign_in/presentation/pages/sign_in_page.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';

void main() async {
  // ignore: unused_local_variable
  final store = await HiveStore.open(path: 'hive');
  Bloc.observer = TalkerBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return DependencyInjector(
      child: MaterialApp(
        title: 'Kurisu',
        theme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,
          primarySwatch: Colors.red,
        ),
        // home: const AnimeListPage(title: 'Kurisu'),
        home: BlocBuilder<SignInBloc, SignInState>(
          builder: (context, state) {
            if (const SignInState.performed() == state) {
              return const AnimeListPage(
                title: 'Kurisu',
              );
            }
            return const SignInPage();
          },
        ),
      ),
    );
  }
}
