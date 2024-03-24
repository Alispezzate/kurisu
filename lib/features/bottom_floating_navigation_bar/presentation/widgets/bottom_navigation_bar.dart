import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../anime_list/presentation/bloc/anime_list_bloc.dart';

class BottomFloatingNavigationBar extends StatefulWidget {
  const BottomFloatingNavigationBar({Key? key}) : super(key: key);

  @override
  State<BottomFloatingNavigationBar> createState() => _BottomFloatingNavigationBarState();
}

enum AnimeStatus { CURRENT, PLANNING, COMPLETED, DROPPED, PAUSED, REPEATING, REWATCHING }

class _BottomFloatingNavigationBarState extends State<BottomFloatingNavigationBar> {
  AnimeStatus status = AnimeStatus.CURRENT;

  @override
  Widget build(BuildContext context) {
    return FloatingNavbar(
      margin: EdgeInsets.zero,
      padding: const EdgeInsets.all(4),
      onTap: (int val) {
        changePage(val);
      },
      currentIndex: status.index,
      items: [
        FloatingNavbarItem(icon: Icons.access_time, title: 'Current'),
        FloatingNavbarItem(icon: Icons.checklist, title: 'Planning'),
        FloatingNavbarItem(icon: Icons.check, title: 'Completed'),
        FloatingNavbarItem(icon: Icons.clear, title: 'Dropped'),
        FloatingNavbarItem(icon: Icons.pause, title: 'Paused'),
      ],
    );
  }

  void changePage(int index) {
    setState(() {
      switch (index) {
        case 0:
          status = AnimeStatus.CURRENT;
          break;
        case 1:
          status = AnimeStatus.PLANNING;
          break;
        case 2:
          status = AnimeStatus.COMPLETED;
          break;
        case 3:
          status = AnimeStatus.DROPPED;
          break;
        case 4:
          status = AnimeStatus.PAUSED;
          break;
        case 5:
          status = AnimeStatus.REPEATING;
          break;
      }
      // currentTabIndex = index;
      BlocProvider.of<AnimeListBloc>(context).loadList(status.name);
    });
  }
}
