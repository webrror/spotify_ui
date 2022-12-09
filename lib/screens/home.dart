import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:spotify_ui/data/data.dart';
import 'package:spotify_ui/screens/album.dart';
import 'package:spotify_ui/screens/playlist.dart';
import 'package:spotify_ui/utils/timeRange.dart';
import 'package:spotify_ui/widgets/personalCard.dart';
import 'package:spotify_ui/widgets/recentSmallCard.dart';
import 'package:spotify_ui/widgets/recommendCard.dart';
import 'package:spotify_ui/widgets/title.dart';

import 'liked.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          backgroundColor: const Color.fromARGB(255, 22, 22, 22),
          elevation: 0,
          centerTitle: false,
          //toolbarHeight: screenHeight * 0.11,
          title: Text(
            TimeRange().checkRange(),
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
          pinned: true,
          floating: true,
          snap: true,
          actions: [
            Bounceable(
                curve: Curves.bounceOut,
                reverseCurve: Curves.bounceIn,
                onTap: () {},
                child: const Icon(FluentIcons.alert_20_regular)),
            SizedBox(
              width: screenWidth * 0.055,
            ),
            Bounceable(
                curve: Curves.bounceOut,
                reverseCurve: Curves.bounceIn,
                onTap: () {},
                child: const Icon(FluentIcons.history_20_regular)),
            SizedBox(
              width: screenWidth * 0.055,
            ),
            Bounceable(
                curve: Curves.bounceOut,
                reverseCurve: Curves.bounceIn,
                onTap: () {},
                child: const Icon(FluentIcons.settings_20_regular)),
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
                  Chip(
                    backgroundColor: Colors.black12,
                    label: const Text('Music'),
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenHeight / 64.92),
                  ),
                  SizedBox(
                    width: screenWidth * 0.015,
                  ),
                  Chip(
                    backgroundColor: Colors.black12,
                    label: const Text('Podcasts & Shows'),
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: screenHeight / 64.92),
                  )
                ],
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.03, vertical: screenHeight * 0.01),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: screenHeight * 0.075,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                var data = recentSmallCards[index];
                
                return Bounceable(
                  onTap: () {
                    if (data['type'] == 'Liked') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Liked(
                              data: data,
                            ),
                          ));
                    } else if (data['type'] == 'Album' ||
                        data['type'] == 'Single') {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Album(
                              data: data,
                            ),
                          ));
                    }
                  },
                  child: RecentSmallCard(
                      imageUrl: recentSmallCards[index]['imageUrl'],
                      title: recentSmallCards[index]['title']),
                );
              },
              childCount: recentSmallCards.length,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.036,
                  top: screenHeight * 0.01,
                  bottom: screenHeight * 0.02),
              child: const CustomTitle(text: 'Made for Jerin'),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: SizedBox(
                height: screenHeight * 0.25,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    var data = madeForUser[index];
                    return Bounceable(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Playlist(data: data),
                            ));
                      },
                      child: RecommendCard(
                          description: madeForUser[index]['description'],
                          imageUrl: madeForUser[index]['imageUrl']),
                    );
                  },
                  itemCount: madeForUser.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(
                      left: screenWidth * 0.040, right: screenWidth * 0.040),
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.036,
                  top: screenHeight * 0.01,
                  bottom: screenHeight * 0.02),
              child: const CustomTitle(text: 'Recently played'),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: SizedBox(
                height: screenHeight * 0.24,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    var data = recentlyPlayed[index];

                    return Bounceable(
                      onTap: () {
                        if (data['type'] == 'Playlist') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Playlist(data: data),
                              ));
                        } else if (data['type'] == 'Liked') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Liked(
                                  data: data,
                                ),
                              ));
                        } else if (data['type'] == 'Album' ||
                            data['type'] == 'Single') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Album(
                                  data: data,
                                ),
                              ));
                        }
                      },
                      child: PersonalCard(
                          title: recentlyPlayed[index]['title'],
                          imageUrl: recentlyPlayed[index]['imageUrl']),
                    );
                  },
                  itemCount: recentlyPlayed.length,
                  // separatorBuilder: (context, index) {
                  //   return SizedBox(width: screenWidth*0.02,);
                  // },
                  shrinkWrap: true,
                  padding: EdgeInsets.only(
                      left: screenWidth * 0.040, right: screenWidth * 0.040),
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.036,
                  top: screenHeight * 0.01,
                  bottom: screenHeight * 0.02),
              child: const CustomTitle(text: 'Made For Us'),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: SizedBox(
                height: screenHeight * 0.27,
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Bounceable(
                      onTap: () {},
                      child: const PersonalCard(
                        title: 'Create a Blend',
                        imageUrl:
                            'https://res.cloudinary.com/jgarden/image/upload/v1670514640/Spotify%20UI/Common/xhmwp2ti6eqo3nlxdzaq.jpg',
                        description: 'A playlist for you and a friend.',
                      ),
                    );
                  },
                  itemCount: 1,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: screenWidth * 0.02,
                    );
                  },
                  shrinkWrap: true,
                  padding: EdgeInsets.only(
                      left: screenWidth * 0.040, right: screenWidth * 0.040),
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.036,
                  top: screenHeight * 0.01,
                  bottom: screenHeight * 0.02),
              child: const CustomTitle(text: "India's Best"),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: SizedBox(
                height: screenHeight * 0.24,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    var data = indiaBest[index];
                    return Bounceable(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Playlist(data: data),
                            ));
                      },
                      child: RecommendCard(
                          description: indiaBest[index]['description'],
                          imageUrl: indiaBest[index]['imageUrl']),
                    );
                  },
                  itemCount: indiaBest.length,
                  // separatorBuilder: (context, index) {
                  //   return SizedBox(width: screenWidth*0.02,);
                  // },
                  shrinkWrap: true,
                  padding: EdgeInsets.only(
                      left: screenWidth * 0.040, right: screenWidth * 0.040),
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.036,
                  top: screenHeight * 0.01,
                  bottom: screenHeight * 0.02),
              child: const CustomTitle(text: 'Charts'),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: SizedBox(
                height: screenHeight * 0.24,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    var data = charts[index];
                    return Bounceable(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Playlist(data: data),
                            ));
                      },
                      child: RecommendCard(
                          description: charts[index]['description'],
                          imageUrl: charts[index]['imageUrl']),
                    );
                  },
                  itemCount: charts.length,
                  // separatorBuilder: (context, index) {
                  //   return SizedBox(width: screenWidth*0.02,);
                  // },
                  shrinkWrap: true,
                  padding: EdgeInsets.only(
                      left: screenWidth * 0.040, right: screenWidth * 0.040),
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.036,
                  top: screenHeight * 0.01,
                  bottom: screenHeight * 0.02),
              child: const CustomTitle(text: 'Mood'),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: SizedBox(
                height: screenHeight * 0.24,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    var data = moods[index];
                    return Bounceable(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Playlist(data: data),
                            ));
                      },
                      child: RecommendCard(
                          description: moods[index]['description'],
                          imageUrl: moods[index]['imageUrl']),
                    );
                  },
                  itemCount: moods.length,
                  // separatorBuilder: (context, index) {
                  //   return SizedBox(width: screenWidth*0.02,);
                  // },
                  shrinkWrap: true,
                  padding: EdgeInsets.only(
                      left: screenWidth * 0.040, right: screenWidth * 0.040),
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.036,
                  top: screenHeight * 0.01,
                  bottom: screenHeight * 0.02),
              child: const CustomTitle(text: 'New releases for you'),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: SizedBox(
                height: screenHeight * 0.28,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    var data = newReleases[index];
                    return Bounceable(
                      onTap: () {
                        if (data['type'] == 'Playlist') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Playlist(data: data),
                              ));
                        } else if (data['type'] == 'Album' ||
                            data['type'] == 'Single') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Album(
                                  data: data,
                                ),
                              ));
                        }
                      },
                      child: PersonalCard(
                          title: newReleases[index]['title'],
                          description: newReleases[index]['description'],
                          imageUrl: newReleases[index]['imageUrl']),
                    );
                  },
                  itemCount: newReleases.length,
                  // separatorBuilder: (context, index) {
                  //   return SizedBox(width: screenWidth*0.02,);
                  // },
                  shrinkWrap: true,
                  padding: EdgeInsets.only(
                      left: screenWidth * 0.040, right: screenWidth * 0.040),
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.12,
            )
          ]),
        )
      ],
    );
  }
}
