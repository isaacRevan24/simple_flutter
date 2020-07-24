import 'package:flutter/material.dart';

import 'project_progress/drop_down_buttons.dart';
import 'project_progress/tile_task.dart';

class ProjectProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          _searchBar(),
          _dropDownButtonsList(),
          _taskListBuilder(),
        ],
      ),
    );
  }

  /// Lista de tareas
  Expanded _taskListBuilder() {
    return Expanded(
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) => TileTask(),
      ),
    );
  }

  /// Lista de botones drop down
  Padding _dropDownButtonsList() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          DropDownAdvanceTypes(),
          DropDownDate(),
          DropDownSections()
        ],
      ),
    );
  }

  /// Barra de busqueda de project progess
  Padding _searchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search ...',
        ),
      ),
    );
  }
}
