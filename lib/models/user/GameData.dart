class GameData{
  String name;
  List progress;
  GameData(this.name, this.progress);
    factory GameData.fromJson(dynamic json) {
    return GameData(json['name'] as String, List.from(json['progress']));
  }
    @override
  String toString() {
    return '{${this.name},${this.progress}}';
  }
}