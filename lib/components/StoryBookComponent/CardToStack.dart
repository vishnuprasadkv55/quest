import 'dart:math';

import 'package:flutter/material.dart';
class CardToStack extends StatelessWidget {
  const CardToStack({
    Key key,
    @required this.padding,
    @required this.verticalInset,
    @required this.delta,
    @required this.start,
    @required this.cardAspectRatio,
    @required this.images,
    @required this.i,
    @required this.title,
  }) : super(key: key);

  final double padding;
  final double verticalInset;
  final num delta;
  final double start;
  final cardAspectRatio;
  final images;
  final int i;
  final title;

  @override
  Widget build(BuildContext context) {
    return Positioned.directional(
      top: padding + verticalInset * max(-delta, 0.0),
      bottom: padding + verticalInset * max(-delta, 0.0),
      start: start,
      textDirection: TextDirection.rtl,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(3.0, 6.0),
                blurRadius: 10.0)
          ]),
          child: AspectRatio(
            aspectRatio: cardAspectRatio,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image.network(
                  images[i],
                  fit: BoxFit.cover,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: Text(title[i],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontFamily: "SF-Pro-Text-Regular")),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 12.0, bottom: 12.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.0, vertical: 6.0),
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Text("Read Later",
                              style: TextStyle(color: Colors.white)),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
