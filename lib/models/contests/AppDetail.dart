import 'Contest.dart';

class AppDetail {
  String type;
  List<Contest> contests;
  AppDetail(this.type, [this.contests]);
  factory AppDetail.fromJson(dynamic json) {
    if (json['contests'] != null) {
      var contestObjJson = json['contests'] as List;
      List<Contest> _contests = contestObjJson
          .map((contestJson) => Contest.fromJson(contestJson))
          .toList();
      return AppDetail(json['type'] as String, _contests);
    } else {
      return AppDetail(
        json['type'] as String,
      );
    }
  }
  @override
  String toString() {
    return '{${this.type},${this.contests}}';
  }
}
