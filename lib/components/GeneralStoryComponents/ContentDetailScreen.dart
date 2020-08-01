import 'package:flutter/material.dart';
import 'package:quest/components/GameComponents/GameMainScreen.dart';

class ContestDetailScreen extends StatelessWidget {
  final heroTag;
  final imageUrl;
  final title;
  final gameDetail;
  final userData;
  ContestDetailScreen(
      {this.heroTag,
      this.imageUrl,
      this.title,
      this.gameDetail,
      this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ContestImagePreview(
                  imageUrl: imageUrl,
                  heroTag: heroTag,
                ),
                ContestInformation(
                  title: title,
                  gameDetail: gameDetail,
                  userData: userData,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContestInformation extends StatelessWidget {
  const ContestInformation(
      {Key key, this.title, this.gameDetail, this.userData})
      : super(key: key);
  final title;
  final gameDetail;
  final userData;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(51, 51, 51, 0.95),
          ),
          child: Column(
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
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
                  child: InkWell(
                      child: Text(
                        "Play now",
                        style: TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GameMainScreen(
                              gameDetail: gameDetail,
                              userData: userData,
                            ),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContestImagePreview extends StatelessWidget {
  const ContestImagePreview({
    Key key,
    @required this.imageUrl,
    @required this.heroTag,
  }) : super(key: key);
  final heroTag;
  final imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      child: GestureDetector(
        child: Hero(
          tag: new Text(
            heroTag,
          ),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
