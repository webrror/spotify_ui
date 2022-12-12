import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../data/data.dart';

class NowPlaying extends StatefulWidget {
  const NowPlaying({
    Key? key,
    required this.closeOpen,
  }) : super(key: key);
  final VoidCallback closeOpen;

  @override
  State<NowPlaying> createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(stops: const [
        0.4,
        //0.4,
        1
      ], colors: [
        nowPlaying["playerColor2"],
        //nowPlaying["playerColor"],
        Colors.black.withOpacity(0.00001)
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Scaffold(
        //backgroundColor: nowPlaying["playerColor"],
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              widget.closeOpen();
            },
            icon: const Icon(FluentIcons.chevron_down_20_regular),
          ),
          title: Text(
            nowPlaying['album'],
            style: const TextStyle(fontSize: 14, color: Colors.white70),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(FluentIcons.more_horizontal_20_regular))
          ],
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Image.network(nowPlaying['imageUrl']),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: Column(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0, right: 20),
                        child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(
                              nowPlaying["title"],
                              style: const TextStyle(
                                  fontSize: 20, color: Colors.white),
                            ),
                            subtitle: Text(
                              nowPlaying["artists"],
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.white60),
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                setState(() {
                                  isLiked = !isLiked;
                                });
                              },
                              icon: isLiked
                                  ? const Icon(
                                      FluentIcons.heart_20_filled,
                                      color: Colors.greenAccent,
                                    )
                                  : const Icon(FluentIcons.heart_20_regular),
                            )),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: SliderTheme(
                          data: const SliderThemeData(
                              trackHeight: 3,
                              thumbShape:
                                  RoundSliderThumbShape(enabledThumbRadius: 6)),
                          child: Slider(
                            activeColor: Colors.white,
                            inactiveColor: Colors.white30,
                            divisions: 100,
                            value: 20,
                            onChanged: (value) {},
                            min: 0,
                            max: 100,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 30.0, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Expanded(
                                child: Text(
                                  "0:40",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white54),
                                ),
                              ),
                              Text(
                                "-2:41",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white54),
                              )
                            ],
                          )),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      FluentIcons.arrow_shuffle_20_regular)),
                              IconButton(
                                onPressed: () {},
                                icon:
                                    const Icon(FluentIcons.previous_20_filled),
                                iconSize: 28,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                    FluentIcons.play_circle_20_filled),
                                iconSize: 70,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(FluentIcons.next_20_filled),
                                iconSize: 28,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      FluentIcons.arrow_repeat_all_20_regular))
                            ],
                          )),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 20),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(FluentIcons
                                      .device_meeting_room_remote_20_regular)),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                    FluentIcons.share_ios_20_regular),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(FluentIcons.list_20_regular),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
