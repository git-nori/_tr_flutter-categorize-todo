import 'package:flutter_firebase_todo/model/entities/category/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model.dart';

part 'tabs_state.freezed.dart';

@freezed
abstract class TabsState with _$TabsState {
  factory TabsState({
    @Default(<Category>[]) List<Category> categories,
  }) = _TabsState;
  TabsState._();
}
