import 'package:flutter/material.dart';

import 'project_levels_layout.dart';
import 'project_structure/backgroud.dart';

//TODO: replace with the respective widgets
import 'project_structure/header_scroll.dart';

class ProjectStructure extends StatelessWidget {
  final List<Widget> innerContent = <Widget>[
    ProjecInfotHeader(),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProjectStructureBackground(),
        ProjectLevelsLayout(innerContent),
      ],
    );
  }
}
