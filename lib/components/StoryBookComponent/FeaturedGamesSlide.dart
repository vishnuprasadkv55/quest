import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'CardToStack.dart';

class FeaturedGamesSlide extends StatefulWidget {
  @override
  _FeaturedGamesSlideState createState() => _FeaturedGamesSlideState();
  final contests;
  FeaturedGamesSlide({this.contests});
}

class _FeaturedGamesSlideState extends State<FeaturedGamesSlide> {
  @override
  Widget build(BuildContext context) {
    List images =
        widget.contests.map((item) => item.generalConfig.thumbnail).toList();
    List titles = widget.contests.map((item) => item.gameLabel).toList();
    return Container(
      height: 300,
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Container(
              padding: EdgeInsets.all(20),
              child: CardToStack(
                image: images[index],
                title: titles[index],
                index: index.toString(),
              ));
        },
        itemCount: images.length,
        viewportFraction: 0.8,
        scale: 0.9,
        autoplay: true,
      ),
    );
  }
}
