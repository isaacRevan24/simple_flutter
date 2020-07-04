import 'package:flutter/material.dart';
import 'project_levels_layout.dart';
import 'project_structure_backgroud.dart';

class ProjectStructure extends StatelessWidget {
  const ProjectStructure({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProjectStructureBackgrounf(),
        ProjectLevelsLayout(),
      ],
    );
  }
}
