import 'package:flutter/material.dart';
import 'package:flutter_firebase_todo/model/controller/category_list_controller/category_list_controller.dart';
import 'package:flutter_firebase_todo/pages/todo_list/todo_list/todo_list.dart';
import 'package:flutter_firebase_todo/widget/colored_tab_bar.dart';
import 'package:flutter_firebase_todo/widget/floating_action_button.dart';
import 'package:provider/provider.dart';

class CategoryListPage extends StatelessWidget {
  static const rootId = '/category_list';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: context
          .select((CategoryListState state) => state.categoryList.length),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade800,
          actions: [
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        '編集',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.keyboard_control_sharp),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  IconButton(icon: const Icon(Icons.folder), onPressed: () {}),
                  IconButton(
                      icon: const Icon(Icons.settings), onPressed: () {}),
                ],
              ),
            ),
          ],
          bottom: ColoredTabBar(
            color: Colors.black,
            tabBar: TabBar(
              indicatorColor: Colors.white,
              isScrollable: true,
              indicatorWeight: 3,
              tabs: context
                  .select((CategoryListState state) => state.categoryList)
                  .map((e) => _Tab(
                        title: e.title,
                        totalCnt: e.todoList.length,
                      ))
                  .toList(),
            ),
          ),
        ),
        body: _TabBarView(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: const FloatingActionBtn(),
      ),
    );
  }
}

class _Tab extends StatelessWidget {
  const _Tab({
    Key key,
    @required this.title,
    @required this.totalCnt,
  }) : super(key: key);
  final String title;
  final int totalCnt;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        children: () {
          final titleWidget = Text(title);
          return totalCnt <= 0
              ? [titleWidget]
              : [
                  titleWidget,
                  const SizedBox(width: 5),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: Center(child: Text('$totalCnt')),
                  ),
                ];
        }(),
      ),
    );
  }
}

class _TabBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: TabBarView(
        children: context
            .select((CategoryListState state) => state.categoryList)
            .map((e) => TodoList(todoList: e.todoList))
            .toList(),
      ),
    );
  }
}
