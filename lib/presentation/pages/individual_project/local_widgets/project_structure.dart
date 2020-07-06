import 'package:flutter/material.dart';

import 'project_levels_layout.dart';
import 'project_structure/backgroud.dart';
import 'project_structure/sections_list.dart';

//TODO: replace with the respective widgets
import 'project_structure/header_scroll.dart';

final List<String> sectionNames = [
  'Backend',
  'frontend',
  'bd',
  'negocios',
  'marketing'
];

class ProjectStructure extends StatelessWidget {
  final List<Widget> innerContent = <Widget>[
    ProjecInfotHeader(),
    SectionList(
      sectionsName: sectionNames,
    ),
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
