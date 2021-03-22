import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model.dart';

part 'category.freezed.dart';

@freezed
abstract class Category with _$Category {
  factory Category({
    @required String title,
    @Default(<Todo>[]) List<Todo> todos,
  }) = _Category;
  Category._();
}
