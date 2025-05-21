import 'dart:convert';

class PostData {
  int userId;
  int id;
  String title;
  String body;

  PostData({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory PostData.fromRawJson(String str) =>
      PostData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PostData.fromJson(Map<String, dynamic> json) => PostData(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
