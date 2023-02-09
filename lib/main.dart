import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

String readRepositories = '''
query (\$userName: String!) {
  MediaListCollection (userName: \$userName, type: ANIME) {
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
    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.red,
        ),
        home: const MyHomePage(title: 'Kurisu'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Query(
        options: QueryOptions(
          document: gql(
              readRepositories), // this is the query string you just created
          variables: const {
            'userName': "JohnCenaSsjBlue",
          },
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

          List? repositories =
              result.data?['MediaListCollection']['lists'][0]['entries'];

          if (repositories == null) {
            return const Text('No repositories');
          }

          return ListView.builder(
              itemCount: repositories.length,
              itemBuilder: (context, index) {
                final repository = repositories[index];

                return Flexible(
                  child: DataTable2(
                    columns: <DataColumn>[
                      DataColumn(
                        label: Text(
                          repository['status'] ?? '',
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Season',
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          ' Type',
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          ' Date started',
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          ' Date completed',
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          ' Last updated',
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          ' Progress',
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          ' Score',
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          ' Notes',
                        ),
                      ),
                    ],
                    rows: const <DataRow>[
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                          DataCell(Text('0')),
                        ],
                      ),
                    ],
                  ),
                );
              });
        },
      ),
    );
  }
}
