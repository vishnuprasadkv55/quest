import 'package:flutter/material.dart';
import 'package:quest/components/GeneralStoryComponents/FeaturedGamesSlide.dart';

import 'GeneralStoryComponents/AllGames.dart';
import 'GeneralStoryComponents/Favourites.dart';
import 'GeneralStoryComponents/Featured.dart';
import 'NavigationBar/NavigationBar.dart';

class StoriesLandingPage extends StatelessWidget {
  final contests;
  StoriesLandingPage({this.contests});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF1b1e44),
            Color(0xFF2d3447),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          tileMode: TileMode.clamp,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: <Widget>[
                NavigationBar(),
                Favourites(contests: contests,title: 'Favourites',),
                Favourites(contests: contests,title: 'Continue Playing',),
                Favourites(contests: contests,title: 'Newly Added',),
                Featured(contests: contests),
                AllGames(contests: contests)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
