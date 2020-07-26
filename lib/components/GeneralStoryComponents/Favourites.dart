import 'package:flutter/material.dart';
import 'package:quest/components/StoryBookComponent/StoryBook.dart';

class Favourites extends StatelessWidget {
  const Favourites({
    Key key,
    @required this.contests,
    @required this.title,
  }) : super(key: key);

  final contests;
  final title;

  @override
  Widget build(BuildContext context) {
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
        StoryBook(contests: contests),        
        SizedBox(
          height: 35,
        ),
      ],
    );
  }
}
