import 'package:flutter/material.dart';

class ProjectInfoBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.4,
      child: Container(
        color: Colors.white,
        child: Center(
          child: Text('background'),
        ),
      ),
    );
  }
}
