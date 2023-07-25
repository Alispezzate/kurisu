import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:kurisu/di/dependency_injector.dart';

import 'pages/home_page.dart';

void main() async {
  // We're using HiveStore for persistence,
  // so we need to initialize Hive.
  await initHiveForFlutter();

  final HttpLink httpLink = HttpLink(
    'https://graphql.anilist.co',
  );

  final AuthLink authLink = AuthLink(
    getToken: () async => null,
    // OR
    // getToken: () => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
  );

  final Link link = authLink.concat(httpLink);

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: link,
      // The default store is the InMemoryStore, which does NOT persist to disk
      cache: GraphQLCache(store: HiveStore()),
    ),
  );
  runApp(MyApp(client: client));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.client});
  final ValueNotifier<GraphQLClient> client;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DependencyInjector(
      child: GraphQLProvider(
        client: client,
        child: MaterialApp(
          title: 'Kurisu',
          theme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.red,
          ),
          home: const HomePage(title: 'Kurisu'),
        ),
      ),
    );
  }
}
