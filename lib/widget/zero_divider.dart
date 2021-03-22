import 'package:flutter/material.dart';

class ZeroDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 0,
      color: Colors.white,
    );
  }
}
