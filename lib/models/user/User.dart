class User {
  List favourites;
  List games;
  User(this.favourites, this.games);
  factory User.fromJson(dynamic json) {
    return User(List.from(json['favs']), List.from(json['games']));
  }
    @override
  String toString() {
    return '{${this.favourites},${this.games}}';
  }
}
