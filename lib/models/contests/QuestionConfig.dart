class QuestionConfig {
  String textColor;
  String imageTheme;
  String imageUrl;
  QuestionConfig(this.textColor, this.imageTheme, this.imageUrl);
  factory QuestionConfig.fromJson(dynamic json) {
    return QuestionConfig(json['textColor'] as String,
        json['imageTheme'] as String, json['imageUrl'] as String);
  }
  @override
  String toString() {
    return '{${this.textColor},${this.imageTheme},${this.imageUrl}}';
  }
}
