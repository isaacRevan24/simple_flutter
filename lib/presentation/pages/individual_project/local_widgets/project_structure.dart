import 'package:flutter/material.dart';

import 'project_levels_layout.dart';
import 'project_structure/backgroud.dart';
import 'project_structure/sections_list.dart';

//TODO: replace with the respective widgets
import 'project_structure/header_scroll.dart';

class ProjectStructure extends StatelessWidget {
  final List<Widget> innerContent = <Widget>[
    ProjecInfotHeader(),
    SectionList(),
    // SectionList(sectionsName: sectionsName)
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
