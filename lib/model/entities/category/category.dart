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
}
