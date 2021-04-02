import 'package:flutter/material.dart';

class ColoredTabBar extends StatelessWidget implements PreferredSizeWidget {
  const ColoredTabBar({@required this.tabBar, @required this.color});
  final PreferredSizeWidget tabBar;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Ink(
      color: color,
      child: Align(alignment: Alignment.centerLeft, child: tabBar),
    );
  }

  @override
  Size get preferredSize => tabBar.preferredSize;
}
