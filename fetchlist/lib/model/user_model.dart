
import 'package:meta/meta.dart';
import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    List<Post> posts;
    int total;
    int skip;
    int limit;

    UserModel({
        required this.posts,
        required this.total,
        required this.skip,
        required this.limit,
    });

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        posts: List<Post>.from(json["posts"].map((x) => Post.fromJson(x))),
        total: json["total"],
        skip: json["skip"],
        limit: json["limit"],
    );

    Map<String, dynamic> toJson() => {
        "posts": List<dynamic>.from(posts.map((x) => x.toJson())),
        "total": total,
        "skip": skip,
        "limit": limit,
    };
}

class Post {
    int id;
    String title;
    String body;
    List<String> tags;
    Reactions reactions;
    int views;
    int userId;

    Post({
        required this.id,
        required this.title,
        required this.body,
        required this.tags,
        required this.reactions,
        required this.views,
        required this.userId,
    });

    factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json["id"],
        title: json["title"],
        body: json["body"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        reactions: Reactions.fromJson(json["reactions"]),
        views: json["views"],
        userId: json["userId"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "body": body,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "reactions": reactions.toJson(),
        "views": views,
        "userId": userId,
    };

  toLowerCase() {}
}

class Reactions {
    int likes;
    int dislikes;

    Reactions({
        required this.likes,
        required this.dislikes,
    });

    factory Reactions.fromJson(Map<String, dynamic> json) => Reactions(
        likes: json["likes"],
        dislikes: json["dislikes"],
    );

    Map<String, dynamic> toJson() => {
        "likes": likes,
        "dislikes": dislikes,
    };
}

























