import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'pages/home/todo_list_page.dart';

class App extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Container(
            color: Colors.blue,
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            title: 'flutter-firebase-todo',
            theme: ThemeData.dark(),
            initialRoute: TodoListPage.rootId,
            routes: {
              TodoListPage.rootId: (context) => TodoListPage(),
            },
          );
        }
        return Container(
          color: Colors.red,
        );
      },
    );
  }
}
