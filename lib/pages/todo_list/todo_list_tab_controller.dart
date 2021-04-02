import 'package:flutter/material.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:flutter_firebase_todo/pages/todo_list/todo_list_tab_state.dart';

class TodoListTabController extends StateNotifier<TodoListTabState>
    with LocatorMixin {
  TodoListTabController(TabController tabController)
      : super(TodoListTabState(currentIndex: 0, tabController: tabController)) {
    state.tabController.addListener(() {
      state = state.copyWith(currentIndex: state.tabController.index);
    });
  }
}
