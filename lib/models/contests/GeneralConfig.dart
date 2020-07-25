import 'package:quest/models/contests/QuestionConfig.dart';

class GeneralConfig {
  String gameTheme;
  String thumbnail;
  String audioUrl;
  GeneralConfig(this.gameTheme, this.thumbnail, this.audioUrl);
  factory GeneralConfig.fromJson(dynamic json) {
    return GeneralConfig(json['gameTheme'] as String,
        json['thumbnail'] as String, json['audioUrl'] as String);
  }
  @override
  String toString() {
    return '{${this.gameTheme},${this.thumbnail},${this.audioUrl}}';
  }
}
