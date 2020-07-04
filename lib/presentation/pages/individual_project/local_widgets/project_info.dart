import 'package:flutter/material.dart';
import 'project_levels_layout.dart';
import 'project_info_background.dart';

class ProjectInfo extends StatelessWidget {
  const ProjectInfo({
    Key key,
  }) : super(key: key);

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
