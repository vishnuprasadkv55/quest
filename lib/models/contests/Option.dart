class Option {
  String text;
  num actionIndex;
  Option(this.text, this.actionIndex);
  factory Option.fromJson(dynamic json) {
    return Option(json['text'] as String, json['actionIndex'] as num);
  }
  @override
  String toString() {
    return '{${this.text},${this.actionIndex}}';
  }
}
