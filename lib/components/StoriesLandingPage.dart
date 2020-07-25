import 'package:flutter/material.dart';

class StoriesLandingPage extends StatelessWidget {
  final contests;
  StoriesLandingPage({this.contests});
  @override
  Widget build(BuildContext context) {
    print(contests[1].gameLabel);
    return Container(
      child: new Column(
        children:
            contests.map<Widget>((item) => new Text(item.gameLabel)).toList(),
      ),
    );
  }
}
