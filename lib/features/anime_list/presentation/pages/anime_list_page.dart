import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kurisu/features/anime_list/data/models/anime.dart';
import 'package:kurisu/features/anime_list/presentation/bloc/anime_list_bloc.dart';
import 'package:kurisu/features/sign_in/presentation/bloc/sign_in_bloc.dart';

import '../../../bottom_floating_navigation_bar/presentation/widgets/bottom_navigation_bar.dart';

class AnimeListPage extends StatelessWidget {
  const AnimeListPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: BottomFloatingNavigationBar(),
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
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(title),
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
                .map(
                  (entry) => DataRow2(
                    cells: <DataCell>[
                      DataCell(Text(entry.media?.title?.userPreferred ?? '')),
                      DataCell(Text(entry.status ?? '')),
                      DataCell(Text("${entry.media?.season} ${entry.media?.seasonYear}")),
                      DataCell(Text(entry.media?.format ?? '')),
                      DataCell(Text(entry.startedAt != null ? entry.startedAt.toString() : '')),
                      DataCell(Text(entry.completedAt != null ? entry.completedAt.toString() : '')),
                      DataCell(Text(entry.updatedAt != null ? entry.updatedAt.toString() : '')),
                      DataCell(
                        BlocBuilder<AnimeListBloc, AnimeListState>(
                          builder: (context, state) {
                            // if (AnimeListState.savingAnime() == state) {
                            //   //TODO: handle anime saving state
                            //   return const CircularProgressIndicator();
                            // }
                            return Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "${entry.progress ?? ''}/${entry.media?.episodes ?? ''}",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    BlocProvider.of<AnimeListBloc>(context).saveAnime(_increaseEpisodesCount(entry));
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    size: 10,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      DataCell(Text(entry.score.toString())),
                      DataCell(Text(entry.notes ?? '')),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }

  Anime _increaseEpisodesCount(Anime anime) {
    if (anime.progress != null) {
      anime.progress = anime.progress! + 1;
    } else {
      anime.progress = 1;
    }
    return anime;
  }
}
