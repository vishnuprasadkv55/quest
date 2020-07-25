import 'Option.dart';
import 'QuestionConfig.dart';

class Question {
  String text;
  QuestionConfig questionConfig;
  List<Option> options;
  Question(this.text, this.questionConfig, [this.options]);
  factory Question.fromJson(dynamic json) {
    if (json['options'] != null) {
      var optionObjJson = json['options'] as List;
      List<Option> _options = optionObjJson
          .map((optionJson) => Option.fromJson(optionJson))
          .toList();
      return Question(json['text'] as String,
          QuestionConfig.fromJson(json['questionConfig']), _options);
    } else {
      return Question(
        json['text'] as String,
        QuestionConfig.fromJson(json['questionConfig']),
      );
    }
  }
}
