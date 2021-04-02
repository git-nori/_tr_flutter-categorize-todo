import 'package:flutter/material.dart';
import 'package:flutter_firebase_todo/model/controller/category_list_controller/category_list_controller.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'app.dart';

void main() {
  initializeDateFormatting();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    StateNotifierProvider<CategoryListController, CategoryListState>(
      create: (_) => CategoryListController(),
      child: App(),
    ),
  );
}
