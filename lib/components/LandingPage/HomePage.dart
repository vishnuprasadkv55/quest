import 'package:flutter/material.dart';
import 'package:quest/components/LoginSignupPage/LoginSignupPage.dart';

class HomePage extends StatelessWidget {
  final appDetails;
  HomePage({this.appDetails});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Text('hello'),
        ),
          body: Center(
            
        child: LoginSignupPage(),
      ),);
  }
}