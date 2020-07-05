import 'package:flutter/material.dart';
import 'project_levels_layout.dart';
import 'project_info/background.dart';

class ProjectInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProjectInfoBackground(),
        ProjectLevelsLayout(),
      ],
    );
  }
}
