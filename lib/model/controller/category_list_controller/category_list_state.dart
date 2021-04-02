import 'package:flutter_firebase_todo/model/entities/category/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model.dart';

part 'category_list_state.freezed.dart';

@freezed
abstract class CategoryListState with _$CategoryListState {
  factory CategoryListState({
    @Default(<Category>[]) List<Category> categoryList,
  }) = _CategoryListState;
  CategoryListState._();
}