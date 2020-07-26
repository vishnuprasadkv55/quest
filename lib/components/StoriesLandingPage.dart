import 'package:flutter/material.dart';
import 'package:quest/components/StoryBookComponent/FeaturedGamesSlide.dart';
import 'package:quest/components/StoryBookComponent/StoryBook.dart';
import 'package:quest/models/contests/Contest.dart';

import 'NavigationBar/NavigationBar.dart';
import 'StoryBookComponent/AllGamesCard.dart';
import 'StoryBookComponent/ContentDetailScreen.dart';

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
                Favourites(contests: contests),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 30),
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Featured',
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FeaturedGamesSlide(
                      contests: contests,
                    )
                  ],
                ),
                AllGames(contests: contests)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AllGames extends StatelessWidget {
  const AllGames({
    Key key,
    @required this.contests,
  }) : super(key: key);

  final contests;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            left: 20,
            top: 30,
          ),
          alignment: Alignment.topLeft,
          child: Text(
            'All Games',
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: AllGamesCard(contests: contests))
      ],
    );
  }
}

class Favourites extends StatelessWidget {
  const Favourites({
    Key key,
    @required this.contests,
  }) : super(key: key);

  final contests;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.topLeft,
          child: Text(
            'Favourites',
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        StoryBook(contests: contests),
      ],
    );
  }
}
