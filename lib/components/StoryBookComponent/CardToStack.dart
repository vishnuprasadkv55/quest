import 'package:flutter/material.dart';
import 'package:quest/components/StoryBookComponent/ContentDetailScreen.dart';

class CardToStack extends StatelessWidget {
  const CardToStack({
    Key key,
    @required this.image,
    @required this.title,
    @required this.index,
  }) : super(key: key);

  final image;
  final title;
  final index;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black12, offset: Offset(3.0, 6.0), blurRadius: 10.0)
        ]),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            GestureDetector(
              child: Hero(
                tag: new Text('contestHero_' + index),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              onTap: () {
                print('contestHero_' + index);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) {
                      return ContestDetailScreen(
                        heroTag: 'contestHero_' + index,
                        imageUrl: image,
                        title: title,
                      );
                    },
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Text(title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontFamily: "SF-Pro-Text-Regular")),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, bottom: 12.0),
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
            )
          ],
        ),
      ),
    );
  }
}
