import 'package:flutter/material.dart';
class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            color: Colors.white,
            iconSize: 32,
            onPressed: () {Scaffold.of(context).openDrawer();},
          ),
          Text(
            'Quest',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.white,
            iconSize: 32,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
