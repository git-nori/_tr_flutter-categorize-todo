import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_list_tab_state.freezed.dart';

@freezed
abstract class TodoListTabState with _$TodoListTabState {
  factory TodoListTabState({
    @Default(0) int currentIndex,
    TabController tabController,
  }) = _TodoListTabState;
  TodoListTabState._();

  @late
  int get categoryId => currentIndex + 1;
}
