import 'package:data_table_2/data_table_2.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../features/anime_list/presentation/bloc/anime_list_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String status = "CURRENT";

  @override
  void initState() {
    BlocProvider.of<AnimeListBloc>(context).loadList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AnimeListBloc, AnimeListState>(
      listener: (context, state) => {},
      builder: (context, state) => state.when(
        loading: () => const CircularProgressIndicator(),
        error: (error) => Container(
          child: Text(error.toString()),
        ),
        loaded: (animeList) => Scaffold(
          extendBody: true,
          bottomNavigationBar: FloatingNavbar(
            onTap: (int val) {
              //returns tab id which is user tapped
              setState(() {
                if (val == 0) {
                  status = "CURRENT";
                } else if (val == 1) {
                  status = "PLANNING";
                } else if (val == 2) {
                  status = "COMPLETED";
                } else if (val == 3) {
                  status = "DROPPED";
                } else if (val == 4) {
                  status = "PAUSED";
                } else if (val == 5) {
                  status = "REPEATING";
                }
              });
            },
            currentIndex: 0,
            items: [
              FloatingNavbarItem(icon: Icons.home, title: 'Home'),
              FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
              FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
              FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
              FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                ListTile(
                  title: const Text('Now Playing'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    // Then close the drawer.
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('History'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    // Then close the drawer.
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Statistics'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    // Then close the drawer.
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Search'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    // Then close the drawer.
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Seasons'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    // Then close the drawer.
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Torrents'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    // Then close the drawer.
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Item 3'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                    // Then close the drawer.
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: DataTable2(
            //TODO: complete table
            columns: const <DataColumn>[
              DataColumn(
                label: Text(
                  "Status",
                ),
              ),
              // DataColumn(
              //   label: Text(
              //     'Season',
              //   ),
              // ),
              // DataColumn(
              //   label: Text(
              //     ' Type',
              //   ),
              // ),
              // DataColumn(
              //   label: Text(
              //     ' Date started',
              //   ),
              // ),
              // DataColumn(
              //   label: Text(
              //     ' Date completed',
              //   ),
              // ),
              // DataColumn(
              //   label: Text(
              //     ' Last updated',
              //   ),
              // ),
              // DataColumn(
              //   label: Text(
              //     ' Progress',
              //   ),
              // ),
              // DataColumn(
              //   label: Text(
              //     ' Score',
              //   ),
              // ),
              // DataColumn(
              //   label: Text(
              //     ' Notes',
              //   ),
              // ),
            ],
            rows: animeList.animeList
                    .map((entry) => (DataRow2(
                          cells: <DataCell>[
                            DataCell(Text(entry.title)),
                            // const DataCell(Text("")),
                            // DataCell(Text(entry['media']['format'])),
                            // DataCell(Text(entry['startedAt']['year'] != null && entry['startedAt']['month'] != null && entry['startedAt']['day'] != null
                            //     ? "${entry['startedAt']['year']}-${entry['startedAt']['month']}-${entry['startedAt']['day']}"
                            //     : "")),
                            // DataCell(Text(
                            //     entry['completedAt']['year'] != null && entry['completedAt']['month'] != null && entry['completedAt']['day'] != null
                            //         ? "${entry['completedAt']['year']}-${entry['completedAt']['month']}-${entry['completedAt']['day']}"
                            //         : "")),
                            // DataCell(Text(entry['updatedAt'] > 0
                            //     ? DateFormat("yyyy-MM-dd").format(DateTime.fromMillisecondsSinceEpoch(entry['updatedAt'] * 1000))
                            //     : "")),
                            // DataCell(Text(entry['progress'].toString())),
                            // DataCell(Text(entry['score'].toString())),
                            // DataCell(Text(entry['notes'] ?? '')),
                          ],
                        )))
                    .toList() ??
                [],
            // <DataRow>[
            //   DataRow(
            //     cells: <DataCell>[
            //       DataCell(Text(repository[0]['status'])),
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //     ],
            //   ),
            //   DataRow(
            //     cells: <DataCell>[
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //     ],
            //   ),
            //   DataRow(
            //     cells: <DataCell>[
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //       DataCell(Text('0')),
            //     ],
            //   ),
            // ],
          ),
        ),
      ),
    );
  }
}

String readRepositories = '''
query (\$userName: String!, \$status: MediaListStatus) {
  MediaListCollection (userName: \$userName, type: ANIME, status: \$status) {
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
