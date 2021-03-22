import 'package:flutter/material.dart';
import 'package:flutter_firebase_todo/model/controller/tabs_controller/tabs_controller.dart';
import 'package:flutter_firebase_todo/widget/round_button.dart';
import 'package:flutter_firebase_todo/widget/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'todo_list/todo_list.dart';

class TodoListPage extends ConsumerWidget {
  static const rootId = '/home';
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final tabsState = watch(tabsProvider.state);
    return DefaultTabController(
      length: tabsState.categories.length,
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
              tabs: tabsState.categories
                  .map((e) => _Tab(
                        title: e.title,
                        totalCnt: e.todos.length,
                      ))
                  .toList(),
            ),
          ),
        ),
        body: _TabBarView(tabsState: tabsState),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleButton(
                size: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade800,
                  ),
                  onPressed: () {},
                  child: const Icon(Icons.delete_outline),
                ),
              ),
              CircleButton(
                size: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {},
                  child: const Icon(
                    Icons.edit_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
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
  const _TabBarView({@required this.tabsState});
  final TabsState tabsState;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: TabBarView(
        children:
            tabsState.categories.map((e) => TodoList(todos: e.todos)).toList(),
      ),
    );
  }
}
