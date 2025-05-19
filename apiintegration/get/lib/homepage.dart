import 'package:apiintegration/controller/post_controller.dart';
import 'package:apiintegration/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// data fetching using getx

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final PostController postController = Get.put(PostController());

  final List<Color> tileColors = [
    Colors.grey.shade300,
    Colors.blue.shade100,
    Colors.green.shade100,
    Colors.orange.shade100,
    Colors.purple.shade100,
    Colors.teal.shade100,
  ];

  @override
  void initState() {
    super.initState();
    postController.posts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Post Data")),
      body: Obx(
        () =>
            postController.isLoaded.value
                ? ListView.builder(
                  // itemCount: postController.posts.length,
                  itemCount: postController.posts.length,
                  itemBuilder: (context, index) {
                    final color =
                        tileColors[index %
                            tileColors.length]; // cycle through colors
                    final data = postController.posts[index];
                    // print(data);
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(data.title),
                        subtitle: Text(data.body),
                        leading: Text(data.id.toString()),
                        tileColor: color,
                        contentPadding: EdgeInsets.all(12),
                      ),
                    );
                  },
                )
                : Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

// import 'package:apiintegration/controller/user_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// // data fetching using getx

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   // final PostController postController = Get.put(PostController());

//   final UserController userController = Get.put(UserController());

//   final List<Color> tileColors = [
//     Colors.grey.shade300,
//     Colors.blue.shade100,
//     Colors.green.shade100,
//     Colors.orange.shade100,
//     Colors.purple.shade100,
//     Colors.teal.shade100,
//   ];

//   @override
//   void initState() {
//     super.initState();
//     userController.getUsersData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Post Data")),
//       body: Obx(
//         () =>
//             userController.isLoading.value
//                 ? ListView.builder(
//                   // itemCount: postController.posts.length,
//                   itemCount: userController.userData.value.products.length,
//                   itemBuilder: (context, index) {
//                     final color =
//                         tileColors[index %
//                             tileColors.length]; // cycle through colors
//                     final data = userController.userData.value.products[index];
//                     // print(data);
//                     return Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: ListTile(
//                         title: Text(data.title),
//                         subtitle: Text(data.description),
//                         leading: Text(data.id.toString()),
//                         tileColor: color,
//                         contentPadding: EdgeInsets.all(12),
//                       ),
//                     );
//                   },
//                 )
//                 : Center(child: CircularProgressIndicator()),
//       ),
//     );
//   }
// }

// data fetching using stateful widget

// import 'package:apiintegration/models/post.dart';
// import 'package:apiintegration/services/remote_service.dart';
// import 'package:flutter/material.dart';

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   List<Post>? posts;

//   var isLoaded = false;

//   @override
//   void initState() {
//     super.initState();
//     getData();
//   }

//   // @override
//   Future<void> getData() async {
//     posts = await RemoteService().getPost();
//     if (posts != null) {
//       setState(() {
//         isLoaded = true;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Post Data")),
//       body:
//           isLoaded
//               ? ListView.builder(
//                 itemCount: posts?.length,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: ListTile(
//                       title: Text(posts![index].title),
//                       subtitle: Text(posts![index].body),
//                       leading: Text(posts![index].id.toString()),
//                       tileColor: Colors.grey,
//                       contentPadding: EdgeInsets.all(12),
//                     ),
//                   );
//                 },
//               )
//               : Center(child: CircularProgressIndicator()),
//     );
//   }
// }
