import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quest/components/LandingPage/StoriesLandingPage.dart';
import 'package:quest/components/LoginSignupPage/SignIn.dart';
import 'package:quest/models/contests/AppDetail.dart';
import 'package:quest/models/user/User.dart';

class HomeLoad extends StatefulWidget {
  final currentUser;
  const HomeLoad({Key key, this.currentUser}) : super(key: key);
  @override
  _HomeLoadState createState() => _HomeLoadState();
}

class _HomeLoadState extends State<HomeLoad> {
  bool _isLoading = true;
  Object data;
  AppDetail appDetailObj;
  User userData;
  @override
  void initState() {
    super.initState();
    this.setState(() {
      _isLoading = true;
    });
    final databaseReference = Firestore.instance;
    databaseReference
        .collection('app-config')
        .document('5wPDAeuJfHZat11dEJzg')
        .get()
        .then((data) {
      appDetailObj = AppDetail.fromJson(data);
      this.data = data;
      databaseReference
          .collection('users')
          .document(currentUser.uid)
          .get()
          .then((userDetails) {
        // print(userDetails['favs']);
        userData = User.fromJson(userDetails);
        print(userData.favourites);
        this.setState(() {
          _isLoading = false;
        });
      });
    });
  }

  Widget build(BuildContext context) {
    Widget showCircularProgress() {
      return Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      body: Center(
        child: _isLoading
            ? showCircularProgress()
            : StoriesLandingPage(
                contests: appDetailObj.contests,
                userData: userData,
              ),
      ),
    );
  }
}
