import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'CardToStack.dart';

class StoryBook extends StatefulWidget {
  @override
  _StoryBookState createState() => _StoryBookState();
  final contests;
  final isLoop;
  StoryBook({this.contests,this.isLoop});
}

class _StoryBookState extends State<StoryBook> {
  @override
  Widget build(BuildContext context) {
    List images =
        widget.contests.map((item) => item.generalConfig.thumbnail).toList();
    List titles = widget.contests.map((item) => item.gameLabel).toList();
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return CardToStack(image: images[index], title: titles[index],index: index.toString(),);
        },
        itemCount: images.length,
        itemWidth: 300.0,
        layout: SwiperLayout.STACK,
        loop: widget.isLoop,
      ),
    );
  }
}
