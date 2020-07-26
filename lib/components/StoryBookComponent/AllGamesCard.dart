
import 'package:flutter/material.dart';
import 'package:quest/models/contests/Contest.dart';

import 'ContentDetailScreen.dart';

class AllGamesCard extends StatelessWidget {
  const AllGamesCard({
    Key key,
    @required this.contests,
  }) : super(key: key);

  final contests;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ...(contests as List<Contest>).map((item) {
            return Container(
              child: GestureDetector(
                child: Hero(
                  tag: new Text('contestHero_' +
                      contests.indexOf(item).toString()),
                  child: Image.network(
                    item.generalConfig.thumbnail,
                    fit: BoxFit.cover,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return ContestDetailScreen(
                          heroTag: 'contestHero_' +
                              contests.indexOf(item).toString(),
                          imageUrl:
                              item.generalConfig.thumbnail,
                          title: item.gameName,
                        );
                      },
                    ),
                  );
                },
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}