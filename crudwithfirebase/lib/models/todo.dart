import 'package:cloud_firestore/cloud_firestore.dart';

class Todo {
  String task;
  bool isDone;
  Timestamp createOn;
  Timestamp updatedOn;
  Todo({
    required this.task,
    required this.isDone,
    required this.createOn,
    required this.updatedOn,
  });

  Todo.fromJson(Map<String, Object?> json)
    : this(
        task: json["task"]! as String,
        isDone: json["isDone"]! as bool,
        createOn: json["createOn"]! as Timestamp,
        updatedOn: json["updatedOn"]! as Timestamp,
      );

  Todo CopyWith({
    String? task,
    bool? isDone,
    Timestamp? createOn,
    Timestamp? updatedOn,
  }) {
    return Todo(
      task: task ?? this.task,
      isDone: isDone ?? this.isDone,
      createOn: createOn ?? this.createOn,
      updatedOn: updatedOn ?? this.updatedOn,
    );
  }

  Map<String, Object> toJson() {
    return {
      "task": task,
      "isDone": isDone,
      "createOn": createOn,
      "updatedOn": updatedOn,
    };
  }
}
