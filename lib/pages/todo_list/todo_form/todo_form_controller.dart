import 'package:flutter/material.dart';
import 'package:flutter_firebase_todo/model/controller/category_list_controller/category_list_controller.dart';
import 'package:state_notifier/state_notifier.dart';

import 'todo_form_state.dart';

class TodoFormController extends StateNotifier<TodoFormState>
    with LocatorMixin {
  TodoFormController() : super(TodoFormState());
  int _categoryId;

  CategoryListController get _categoryListController => read();

  void setTitle(String value) => state = state.copyWith(title: value);

  void setLimitedDateTime(DateTime limitedDateTime,
      {bool isSelectedTime = false}) {
    state = state.copyWith(
        limitedDateTime: limitedDateTime, isSelectedTime: isSelectedTime);
  }

  void addTodo() {
    _categoryListController.addTodo(
      _categoryId,
      state.title,
      state.limitedDateTime,
      isSelectedTime: state.isSelectedTime,
    );
  }

  @override
  void update(Locator watch) {
    super.update(watch);
    final index = watch<TabController>().index;
    final categoryList = watch<CategoryListState>().categoryList;
    _categoryId = categoryList[index].id;
  }
}
