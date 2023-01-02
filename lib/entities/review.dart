class ReviewModel {
  final String name;
  final String title;
  final String text;

  const ReviewModel(
      {required this.name, required this.text, required this.title});

  factory ReviewModel.fromJson(Map<String, String>? json) => ReviewModel(
      name: json!['name']!, text: json['text']!, title: json['title']!);
}
