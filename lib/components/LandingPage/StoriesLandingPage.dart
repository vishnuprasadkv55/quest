import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quest/components/GeneralStoryComponents/FeaturedGamesSlide.dart';
import 'package:quest/models/contests/AppDetail.dart';
import 'package:quest/models/contests/Contest.dart';

import '../GeneralStoryComponents/AllGames.dart';
import '../GeneralStoryComponents/PageSwipeComponent.dart';
import '../GeneralStoryComponents/Featured.dart';
import '../NavigationBar/NavigationBar.dart';

class StoriesLandingPage extends StatelessWidget {
  final contests;
  final userData;
  StoriesLandingPage({this.contests, this.userData});
  @override
  Widget build(BuildContext context) {
    return GameDataProvider(contests: contests, userData: userData);
  }
}

class GameDataProvider extends StatelessWidget {
  const GameDataProvider({
    Key key,
    @required this.contests,
    @required this.userData,
  }) : super(key: key);

  final contests;
  final userData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF1b1e44),
            Color(0xFF2d3447),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: <Widget>[
                NavigationBar(),
                PageSwipeComponent(
                  contests: contests,
                  title: 'Favourites',
                  listToShow: userData.favourites,
                  isLoop: false,
                ),
                PageSwipeComponent(
                  contests: contests,
                  title: 'Continue Playing',
                  listToShow: userData.favourites,
                  isLoop: false,
                ),
                PageSwipeComponent(
                  contests: contests,
                  title: 'Newly Added',
                  listToShow: userData.favourites,
                  isLoop: true,
                ),
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
