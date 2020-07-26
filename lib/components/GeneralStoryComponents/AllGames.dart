import 'package:flutter/material.dart';

import 'AllGamesCard.dart';

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