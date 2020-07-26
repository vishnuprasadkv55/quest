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
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Stack(
                  children: <Widget>[
                    GestureDetector(
                      child: SizedBox(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: Hero(
                          tag: new Text('contestHero_' +
                              contests.indexOf(item).toString()),
                          child: Image.network(
                            item.generalConfig.thumbnail,
                            fit: BoxFit.cover,
                          ),
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
                                imageUrl: item.generalConfig.thumbnail,
                                title: item.gameName,
                              );
                            },
                          ),
                        );
                      },
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 8.0),
                            child: Text(item.gameName,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontFamily: "SF-Pro-Text-Regular")),
                          ),
                          SizedBox(
                            height: 150.0,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 12.0, bottom: 12.0),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 22.0,
                                vertical: 6.0,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Text("Play now",
                                  style: TextStyle(color: Colors.white)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
