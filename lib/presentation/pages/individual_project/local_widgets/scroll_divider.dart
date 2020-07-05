import 'package:flutter/material.dart';

class ScrollDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey,
      indent: 100,
      endIndent: 100,
      thickness: 2,
    );
  }
}
