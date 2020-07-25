import 'package:flutter/material.dart';

import 'project_structure/backgroud.dart';
import 'project_structure/sections_list.dart';
import 'project_structure/general_tasks_counter.dart';
import 'project_structure/header_scroll.dart';
import 'project_structure/pie_chart.dart';

// Test variable
const List<String> sectionNames = [
  'Backend',
  'frontend',
  'bd',
  'negocios',
  'marketing'
];

// Variable 2
const List<String> tasksCounter = ['100', '70', '30'];

/// Es la clase que contiene el background y el layout de la página project structure
/// esta clase es donde se manda la info para crear esta página
class ProjectStructure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: <Widget>[
          ProjectStructureBackground(),
          ProjecInfotHeader(),
          SectionList(
            sectionsName: sectionNames,
          ),
          ProjectTasksCounters(
            tasksCounter: tasksCounter,
          ),
          ProjectPieChart(),
        ],
      ),
    );
  }
}
