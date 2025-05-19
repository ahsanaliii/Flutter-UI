// models/post_model.dart
class PostModel {
  final int? id;
  final String title;
  final String body;
  final int userId;

  PostModel({
    this.id,
    required this.title,
    required this.body,
    required this.userId,
  });

  Map<String, dynamic> toJson() {
    return {"title": title, "body": body, "userId": userId};
  }

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      title: json['title'],
      body: json['body'],
      userId: json['userId'],
    );
  }
}
