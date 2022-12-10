import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

import '../utils/timeRange.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: const Color.fromARGB(255, 22, 22, 22),
          elevation: 0,
          centerTitle: false,
          //toolbarHeight: screenHeight * 0.11,

          title: Row(
            children: const [
              CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage(
                    'https://i.scdn.co/image/ab6775700000ee857c7d7a4a810d8d1803a085c6'),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Your Library',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          pinned: true,
          actions: [
            Bounceable(
                curve: Curves.bounceOut,
                reverseCurve: Curves.bounceIn,
                onTap: () {},
                child: const Icon(FluentIcons.search_20_regular)),
            SizedBox(
              width: screenWidth * 0.055,
            ),
            Bounceable(
                curve: Curves.bounceOut,
                reverseCurve: Curves.bounceIn,
                onTap: () {},
                child: const Icon(FluentIcons.add_20_regular)),
            SizedBox(
              width: screenWidth * 0.03,
            )
          ],
          bottom: PreferredSize(
            preferredSize: Size(screenWidth, screenHeight * 0.06),
            child: Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.035),
              child: Row(
                children: [
                  Bounceable(
                    onTap: () {},
                    child: Chip(
                      backgroundColor: Colors.black12,
                      label: const Text('Playlists'),
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight / 65.92),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.015,
                  ),
                  Bounceable(
                    onTap: () {},
                    child: Chip(
                      backgroundColor: Colors.black12,
                      label: const Text('Podcasts & Shows'),
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight / 65.92),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.015,
                  ),
                  Bounceable(
                    onTap: () {},
                    child: Chip(
                      backgroundColor: Colors.black12,
                      label: const Text('Albums'),
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight / 65.92),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.015,
                  ),
                  Bounceable(
                    onTap: () {},
                    child: Chip(
                      backgroundColor: Colors.black12,
                      label: const Text('Artists'),
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: screenHeight / 65.92),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}