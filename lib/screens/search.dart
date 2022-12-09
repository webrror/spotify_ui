import 'package:flutter/material.dart';
import 'package:spotify_ui/widgets/searchBar.dart';


class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: const Color.fromARGB(255, 22, 22, 22),
          elevation: 0,
          centerTitle: false,
          //toolbarHeight: screenHeight * 0.11,
          title: const Text(
            'Search',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          pinned: true,
          floating: true,
          snap: true,
          bottom: PreferredSize(
              preferredSize: Size(screenWidth, screenHeight * 0.07),
              child: Padding(
                padding: EdgeInsets.only(
                  left: screenWidth * 0.035,
                  right: screenWidth * 0.035,
                ),
                child: const SearchBar(),
              )),
        ),
      ],
    ));
  }
}
