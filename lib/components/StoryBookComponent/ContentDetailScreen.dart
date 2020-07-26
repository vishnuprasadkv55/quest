import 'package:flutter/material.dart';

class ContestDetailScreen extends StatelessWidget {
  final heroTag;
  final imageUrl;
  final title;
  ContestDetailScreen({this.heroTag, this.imageUrl, this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Hero(
          tag: new Text(heroTag),
          child: Center(
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
                    ContestImagePreview(imageUrl: imageUrl),
                    ContestInformation(title: title)
                  ],
                ),
              ),
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class ContestInformation extends StatelessWidget {
  const ContestInformation({Key key, this.title}) : super(key: key);
  final title;
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
                  child:
                      Text("Play now", style: TextStyle(color: Colors.white)),
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
  }) : super(key: key);

  final imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
