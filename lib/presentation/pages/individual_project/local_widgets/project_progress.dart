import 'package:flutter/material.dart';
import 'project_progress/drop_down_buttons.dart';

class ProjectProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          _searchBar(),
          _dropDownButtonsList(),
          _taskListBuilder()
        ],
      ),
    );
  }

  /// Lista de tareas
  Expanded _taskListBuilder() {
    return Expanded(
      child: Container(
        height: 140,
        color: Colors.white,
        child: ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) => Container(
            height: 40,
            child: Center(
              child: Text("dddd"),
            ),
          ),
        ),
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
          DropDownXXX(),
          DropDownXXX(),
          DropDownXXX(),
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
