import 'package:crudwithfirebase/services/database_service.dart';
import 'package:flutter/material.dart';
import '../models/todo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DatabaseService _databaseService = DatabaseService();
  @override
  Widget build(BuildContext context) {
    DatabaseService().getdata();
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(),

        //  Column(
        //   children: [
        //     SizedBox(
        //       height: mediaQuery.height * 0.8,
        //       width: mediaQuery.width,
        //       child: StreamBuilder(
        //         stream: _databaseService.getTodos(),
        //         builder: (context, snapshot) {
        //           List todos = snapshot.data?.docs ?? [];
        //           if (todos.isEmpty) {
        //             return Center(child: Text("Enter a todo..."));
        //           }
        //           return ListView.builder(
        //             itemCount: todos.length,
        //             itemBuilder: (context, index) {
        //               Todo todo = todos[index].data();
        //               String todoId = todos[index].id;
        //               // print(todoId);
        //               // print(todo);

        //               return Padding(
        //                 padding: const EdgeInsets.symmetric(
        //                   horizontal: 10,
        //                   vertical: 10,
        //                 ),
        //                 child: ListTile(
        //                   tileColor: Colors.blue,
        //                   title: Text(todo.task),
        //                 ),
        //               );
        //             },
        //           );
        //         },
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
