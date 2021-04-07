import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model.dart';

part 'category.freezed.dart';

@freezed
abstract class Category with _$Category {
  factory Category({
    @required int id,
    @required String title,
    @Default(<Todo>[]) List<Todo> todoList,
  }) = _Category;
  Category._();

  @late
  int get notCompletedTodoCnt =>
      todoList.where((element) => !element.isDone).toList().length;

  @late
  List<Todo> get completedTodoList =>
      todoList.where((element) => element.isDone).toList();

  @late
  int get nextTodoId =>
      todoList.isEmpty ? 1 : todoList.map((e) => e.id).reduce(max) + 1;

  Todo getTodo({int todoId}) =>
      todoList.firstWhereOrNull((element) => element.id == todoId);
}
