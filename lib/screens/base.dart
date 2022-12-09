import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:spotify_ui/screens/home.dart';
import 'package:spotify_ui/screens/library.dart';
import 'package:spotify_ui/screens/search.dart';

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  int currentIndex = 0;

  List<Widget> mainBodies = [const Home(), const Search(), const Library()];

  void changeTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          mainBodies[currentIndex],

          // Bottom Navigation Bar
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: screenHeight * 0.11,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black54, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 0.3, 0.7],
                ),
              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
                child: BottomNavigationBar(
                  currentIndex: currentIndex,
                  elevation: 0,
                  enableFeedback: true,
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: Colors.transparent,
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.white70,
                  onTap: (index) {
                    changeTab(index);
                  },
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(FluentIcons.home_20_regular),
                        activeIcon: Icon(FluentIcons.home_20_filled),
                        label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(FluentIcons.search_20_regular),
                        activeIcon: Icon(FluentIcons.search_20_filled),
                        label: 'Search'),
                    BottomNavigationBarItem(
                        icon: Icon(FluentIcons.library_20_regular),
                        activeIcon: Icon(FluentIcons.library_20_filled),
                        label: 'Your Library'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
