import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
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
      databaseReference
          .collection('users')
          .document(currentUser.uid)
          .get()
          .then((userDetails) {
        userData = User.fromJson(userDetails);
        userData.currentUser = currentUser;
        print('userData.favourites');
        print(userData.currentUser);
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
            : MultiProvider(
                providers: [
                  Provider<AppDetail>(
                    create: (context) => appDetailObj,

                  ),
                  Provider<User>(
                    create: (context) => userData,
                    
                  ),
                ],
                child: StoriesLandingPage(
                  contests: appDetailObj.contests,
                  userData: userData,
                ),
              ),
      ),
    );
  }
}
