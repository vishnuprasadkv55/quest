import 'package:flutter/material.dart';

class GameMainScreen extends StatelessWidget {
  final gameDetail;
  final userData;
  GameMainScreen({this.gameDetail,this.userData});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
        child: Column(
          children: <Widget>[
            Text(gameDetail.gameLabel),
          ],
        ),
      ),
    );
  }
}
