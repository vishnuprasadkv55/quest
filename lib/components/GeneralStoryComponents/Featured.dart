import 'package:flutter/material.dart';

import 'FeaturedGamesSlide.dart';

class Featured extends StatelessWidget {
  const Featured({
    Key key,
    @required this.contests,
  }) : super(key: key);

  final contests;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

