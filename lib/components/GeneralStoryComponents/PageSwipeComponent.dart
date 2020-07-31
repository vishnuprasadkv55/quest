import 'package:flutter/material.dart';
import 'package:quest/components/StoryBookComponent/StoryBook.dart';
import 'package:quest/models/contests/Contest.dart';

class PageSwipeComponent extends StatelessWidget {
  const PageSwipeComponent({
    Key key,
    @required this.contests,
    @required this.title,
    @required this.listToShow,
    @required this.isLoop,
  }) : super(key: key);

  final List<Contest> contests;
  final title;
  final listToShow;
  final isLoop;
  @override
  Widget build(BuildContext context) {
  var contestsToShow = contests.where((item)=> listToShow.contains(item.gameName));
    print(listToShow);
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.topLeft,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        StoryBook(contests: contestsToShow, isLoop: isLoop,),        
        SizedBox(
          height: 35,
        ),
      ],
    );
  }
}
