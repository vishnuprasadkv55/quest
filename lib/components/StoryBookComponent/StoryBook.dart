import 'dart:math';

import 'package:flutter/material.dart';

import 'CardScrollWidget.dart';

class StoryBook extends StatefulWidget {
  @override
  _StoryBookState createState() => _StoryBookState();
  final contests;
  var currentPage;
  StoryBook({this.contests})
      : currentPage =
            (contests.map((item) => item.generalConfig.thumbnail).toList())
                    .length -
                1.0;
}

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

class _StoryBookState extends State<StoryBook> {
  @override
  Widget build(BuildContext context) {
    List images =
        widget.contests.map((item) => item.generalConfig.thumbnail).toList();
    List title = widget.contests.map((item) => item.gameLabel).toList();
    PageController controller = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        widget.currentPage = controller.page;
      });
    });
    return Stack(
      children: <Widget>[
        CardScrollWidget(
            currentPage: widget.currentPage,
            images: images,
            title: title,
            cardAspectRatio: cardAspectRatio,
            widgetAspectRatio: widgetAspectRatio),
        Positioned.fill(
          child: PageView.builder(
            itemCount: images.length,
            controller: controller,
            reverse: true,
            itemBuilder: (context, index) {
              return Container();

              // return new GestureDetector(
              //   onTap: () => print("Action at card $index"),
              // );
            },
          ),
        )
      ],
    );
  }
}
