import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

@freezed
abstract class Todo with _$Todo {
  factory Todo({
    @required int id,
    @required String title,
    @required bool isDone,
    @required bool isSelectedTime,
    DateTime limitDateTime,
  }) = _Todo;
  Todo._();

  Todo toggleIsDone() => copyWith(isDone: !isDone);
}
