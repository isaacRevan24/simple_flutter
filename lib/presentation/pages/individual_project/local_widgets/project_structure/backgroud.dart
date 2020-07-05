import 'package:flutter/material.dart';

class ProjectStructureBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.4,
      child: Container(
        child: Center(
          child: Text('Project structure background'),
        ),
      ),
    );
  }
}
