import 'package:flutter/material.dart';

import 'project_levels_layout.dart';
import 'project_structure/backgroud.dart';
import 'project_structure/sections_list.dart';
import 'project_structure/general_tasks_counter.dart';

//TODO: replace with the respective widgets
import 'project_structure/header_scroll.dart';

// Test variable
const List<String> sectionNames = [
  'Backend',
  'frontend',
  'bd',
  'negocios',
  'marketing'
];

// Variable 2
// final List<String> tasksCounter = ['100', '70', '30'];

class ProjectStructure extends StatelessWidget {
  /// Lista de widgets de la sección de project_structure, en el orden de presentación.
  final List<Widget> innerContent = <Widget>[
    ProjecInfotHeader(),
    SectionList(
      sectionsName: sectionNames,
    ),
    ProjectTasksCounters(),
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
