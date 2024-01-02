import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:kurisu/di/dependency_injector.dart';
import 'package:kurisu/features/sign_in/presentation/pages/sign_in_page.dart';
import 'package:talker_bloc_logger/talker_bloc_logger.dart';

void main() async {
  // ignore: unused_local_variable
  final store = await HiveStore.open(path: 'my/cache/path'); //TODO: change the path
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
        home: const SignInPage(),
      ),
    );
  }
}
