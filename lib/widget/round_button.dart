import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({Key key, @required this.size, @required this.child})
      : super(key: key);
  final double size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size),
      child: SizedBox(width: size, height: size, child: child),
    );
  }
}
