import 'GeneralConfig.dart';
import 'Question.dart';

class Contest {
  GeneralConfig generalConfig;
  String gameLabel;
  String gameName;
  List<Question> questions;

  Contest(this.generalConfig, this.gameLabel, this.gameName, [this.questions]);
  factory Contest.fromJson(dynamic json) {
    if (json['questions'] != null) {
      var questionObjJson = json['questions'] as List;
      List<Question> _questions = questionObjJson
          .map((questionJson) => Question.fromJson(questionJson))
          .toList();
      return Contest(GeneralConfig.fromJson(json['generalConfig']),
          json['gameLabel'] as String, json['gameName'] as String, _questions);
    } else {
      return Contest(GeneralConfig.fromJson(json['generalConfig']),
          json['gameLabel'] as String, json['gameName'] as String);
    }
  }
}
