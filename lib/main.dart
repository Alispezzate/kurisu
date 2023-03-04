import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:kurisu/services/anime_list_service.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() async {
  String query = '''
query (\$nuserName: String!) {
  MediaListCollection (userName: \$nuserName, type: ANIME) {
    lists {
      entries {
        ...mediaListFragment
      }
    }
  }
}

fragment mediaListFragment on MediaList {
  id
status
score(format: POINT_100)
progress
repeat
private
notes
startedAt { year month day }
completedAt { year month day }
updatedAt
  media {
    ...mediaFragment
  }
}

fragment mediaFragment on Media {
  id
idMal
title {
  romaji(stylised: true)
  english(stylised: true)
  native(stylised: true)
  userPreferred
}
format
status
description
startDate { year month day }
endDate { year month day }
episodes
duration
countryOfOrigin
trailer { id site }
updatedAt
coverImage { large }
genres
synonyms
averageScore
popularity
studios { edges { isMain node { name } } }
nextAiringEpisode { airingAt episode }
}
''';
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
//create graphql query variables
  Map<String, dynamic> variables = {
    "userName": "JohnCenaSsjBlue",
  };
  runApp(MyApp(
    client: client,
  ));
  if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
    doWhenWindowReady(() async {
      appWindow.title = "Kurisu";
    });
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.client});
  final ValueNotifier<GraphQLClient> client;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Kurisu', client: client),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.client});
  final String title;
  final ValueNotifier<GraphQLClient> client;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // ...
    return GraphQLProvider(
      client: widget.client,
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          body: Query(
            options: QueryOptions(
              document: gql(query), // this is the query string you just created
              variables: variables,
              pollInterval: const Duration(seconds: 10),
            ),
            // Just like in apollo refetch() could be used to manually trigger a refetch
            // while fetchMore() can be used for pagination purpose
            builder: (QueryResult result,
                {VoidCallback? refetch, FetchMore? fetchMore}) {
              if (result.hasException) {
                return Text(result.exception.toString());
              }

              if (result.isLoading) {
                return const Text('Loading');
              }

              var repositories = result.data;

              if (repositories == null) {
                return const Text('No repositories');
              }
              print(repositories['MediaListCollection']['lists'][0]['entries']
                  [0]['media']['title']['userPreferred']);
              return ListView.builder(
                  itemCount: repositories.length,
                  itemBuilder: (context, index) {
                    final repository = repositories[index];

                    return Text(repositories['MediaListCollection']['lists'][0]
                            ['entries'][0]['media']['title']['userPreferred'] ??
                        '');
                  });
            },
          ),
        ),
      ),
    );
// ...
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text(widget.title),
    //   ),
    //   body: DataTable2(
    //     columns: const <DataColumn>[
    //       DataColumn(
    //         label: Text(
    //           'Average score',
    //         ),
    //       ),
    //       DataColumn(
    //         label: Text(
    //           'Season',
    //         ),
    //       ),
    //       DataColumn(
    //         label: Text(
    //           ' Type',
    //         ),
    //       ),
    //       DataColumn(
    //         label: Text(
    //           ' Date started',
    //         ),
    //       ),
    //       DataColumn(
    //         label: Text(
    //           ' Date completed',
    //         ),
    //       ),
    //       DataColumn(
    //         label: Text(
    //           ' Last updated',
    //         ),
    //       ),
    //       DataColumn(
    //         label: Text(
    //           ' Progress',
    //         ),
    //       ),
    //       DataColumn(
    //         label: Text(
    //           ' Score',
    //         ),
    //       ),
    //       DataColumn(
    //         label: Text(
    //           ' Notes',
    //         ),
    //       ),
    //     ],
    //     rows: const <DataRow>[
    //       DataRow(
    //         cells: <DataCell>[
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //         ],
    //       ),
    //       DataRow(
    //         cells: <DataCell>[
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //         ],
    //       ),
    //       DataRow(
    //         cells: <DataCell>[
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //           DataCell(Text('0')),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }
}
