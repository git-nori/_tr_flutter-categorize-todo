import 'package:flutter/material.dart';

import 'round_button.dart';

class FloatingActionBtn extends StatelessWidget {
  const FloatingActionBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
