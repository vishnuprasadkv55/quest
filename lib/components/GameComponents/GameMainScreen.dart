import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class GameMainScreen extends StatelessWidget {
  final gameDetail;
  final userData;
  GameMainScreen({this.gameDetail, this.userData});
  @override
  Widget build(BuildContext context) {
    print('hell');
    print(userData.currentUser);
    var question = gameDetail.questions[0];
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height / 0.25,
                child: Image.network(
                  question.questionConfig.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    question.text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5,
                    child: Container(
                      child: new Swiper(
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: MediaQuery.of(context).size.height / 5,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                question.options[index].text,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: question.options.length,
                        itemWidth: 300.0,
                        layout: SwiperLayout.DEFAULT,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
