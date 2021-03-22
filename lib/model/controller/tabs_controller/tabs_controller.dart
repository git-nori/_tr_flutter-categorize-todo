import 'package:flutter_firebase_todo/model/model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'tabs_state.dart';
export 'tabs_state.dart';

final mockedList = [
  Category(title: 'Category1', todos: [
    Todo(
        title: 'Category1 todo1',
        isDone: true,
        rimitDateTime: DateTime.now().add(const Duration(hours: 1))),
    Todo(title: 'Category1 todo2', isDone: false),
    Todo(title: 'Category1 todo3', isDone: false),
  ]),
  Category(title: 'Category2', todos: [
    Todo(title: 'Category2 todo2', isDone: true),
    Todo(title: 'Category2 todo3', isDone: false),
  ]),
  Category(title: 'Category3', todos: [
    Todo(title: 'Category3 todo3', isDone: true),
  ]),
  Category(title: 'Category4', todos: []),
  Category(title: 'Category5', todos: [
    Todo(title: 'Category5 todo1', isDone: false),
    Todo(title: 'Category5 todo2', isDone: true),
    Todo(title: 'Category5 todo3', isDone: false),
    Todo(title: 'Category5 todo4', isDone: false),
  ]),
  Category(title: 'Category6', todos: [
    Todo(title: 'Category6 todo1', isDone: true),
    Todo(title: 'Category6 todo2', isDone: true),
    Todo(title: 'Category6 todo3', isDone: false),
    Todo(title: 'Category5 todo4', isDone: false),
    Todo(title: 'Category5 todo5', isDone: false),
  ]),
];

final tabsProvider = StateNotifierProvider((ref) => TabsController());

class TabsController extends StateNotifier<TabsState> {
  TabsController() : super(TabsState(categories: mockedList));
}
