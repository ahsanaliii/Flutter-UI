import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crudwithfirebase/models/todo.dart';

const Todo_Collection_Ref = "todos";

class DatabaseService {
  final _firestore = FirebaseFirestore.instance;
  late final CollectionReference _todosRef;
  DatabaseService() {
    _todosRef = _firestore
        .collection(Todo_Collection_Ref)
        .withConverter<Todo>(
          fromFirestore: (snapshots, _) => Todo.fromJson(snapshots.data()!),
          toFirestore: (todo, _) => todo.toJson(),
        );
  }

  Stream<QuerySnapshot> getTodos() {
    return _todosRef.snapshots();
  }

  void addTodo(Todo todo) {
    _todosRef.add(todo);
  }

  getdata() async {
    final fetchedData =
        await FirebaseFirestore.instance
            .collection("todos")
            .doc("fpA55D9Z9du1eydJXov3")
            .get();
    print(fetchedData.data());
  }
}
