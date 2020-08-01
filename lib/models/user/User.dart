import 'package:quest/models/user/GameData.dart';

class User {
  List favourites;
  List<GameData> games;
  var currentUser;
  User(this.favourites,[this.games]);
  factory User.fromJson(dynamic json) {
    var _gamesObjJson = json['games'] as List;
    List<GameData> _games =
        _gamesObjJson.map((gamesJson) => GameData.fromJson(gamesJson)).toList();
    return User(List.from(json['favs']), _games);
  }
  @override
  String toString() {
    return '{${this.favourites},${this.games}}';
  }
}
