import 'package:data_table_2/data_table_2.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kurisu/features/sign_in/presentation/bloc/sign_in_bloc.dart';

import '../../data/models/anime.dart';
import '../bloc/anime_list_bloc.dart';

class AnimeListPage extends StatefulWidget {
  const AnimeListPage({super.key, required this.title});
  final String title;

  @override
  State<AnimeListPage> createState() => _AnimeListPageState();
}

class _AnimeListPageState extends State<AnimeListPage> {
  String status = "CURRENT";

  int currentTabIndex = 0;

  @override
  void initState() {
    BlocProvider.of<AnimeListBloc>(context).loadList(status);
    super.initState();
  }

  void changePage(int index) {
    setState(() {
      switch (index) {
        case 0:
          status = "CURRENT";
          break;
        case 1:
          status = "PLANNING";
          break;
        case 2:
          status = "COMPLETED";
          break;
        case 3:
          status = "DROPPED";
          break;
        case 4:
          status = "PAUSED";
          break;
        case 5:
          status = "REPEATING";
          break;
      }
      currentTabIndex = index;
      BlocProvider.of<AnimeListBloc>(context).loadList(status);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        margin: const EdgeInsets.all(0),
        padding: const EdgeInsets.all(4),
        onTap: (int val) {
          //returns tab id which is user tapped
          setState(() {
            changePage(val);
          });
        },
        currentIndex: currentTabIndex,
        items: [
          FloatingNavbarItem(icon: Icons.access_time, title: 'Current'),
          FloatingNavbarItem(icon: Icons.checklist, title: 'Planning'),
          FloatingNavbarItem(icon: Icons.check, title: 'Completed'),
          FloatingNavbarItem(icon: Icons.clear, title: 'Dropped'),
          FloatingNavbarItem(icon: Icons.pause, title: 'Paused'),
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
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                // Update the state of the app.
                // ...
                // Then close the drawer.
                BlocProvider.of<SignInBloc>(context).add(const SignInEvent.signOut());
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocBuilder<AnimeListBloc, AnimeListState>(
          builder: (context, state) => state.when(
              loading: () => const CircularProgressIndicator(),
              error: (error) => Text(error.toString()),
              loaded: (animeList) => DataTable2(
                    bottomMargin: 100,
                    columns: const <DataColumn>[
                      DataColumn(label: Text('Title')),
                      DataColumn(
                        label: Text(
                          "Status",
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Season',
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Format',
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
                    rows: animeList.animeList
                        .map((entry) => (DataRow2(
                              cells: <DataCell>[
                                DataCell(Text(entry.media?.title?.userPreferred ?? '')),
                                DataCell(Text(entry.status ?? '')),
                                DataCell(Text("${entry.media?.season} ${entry.media?.seasonYear}")),
                                DataCell(Text(entry.media?.format ?? '')),
                                DataCell(Text(entry.startedAt != null ? entry.startedAt.toString() : '')),
                                DataCell(Text(entry.completedAt != null ? entry.completedAt.toString() : '')),
                                DataCell(Text(entry.updatedAt != null ? entry.updatedAt.toString() : '')),
                                DataCell(Row(children: [
                                  Text("${entry.progress ?? ''}/${entry.media?.episodes ?? ''}"),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        increseEpisodesCount(entry);
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      size: 10,
                                    ),
                                  )
                                ])),
                                DataCell(Text(entry.score.toString())),
                                DataCell(Text(entry.notes ?? '')),
                              ],
                            )))
                        .toList(),
                  ))),
    );
  }

  void increseEpisodesCount(Anime anime) {
    if (anime.progress != null) {
      anime.progress = anime.progress! + 1;
    } else {
      anime.progress = 1;
    }
    BlocProvider.of<AnimeListBloc>(context).saveAnime(anime);
  }
}
