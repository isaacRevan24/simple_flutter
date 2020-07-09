import 'package:flutter/material.dart';
import '../../../widgets/build_project_tile.dart';

class FinishedProjects extends StatefulWidget {
  @override
  _FinishedProjectsState createState() => _FinishedProjectsState();
}

class _FinishedProjectsState extends State<FinishedProjects> {
  final List<String> entries = <String>['1', '2'];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return BuildProjectTile(
          index: index,
          entries: entries,
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}

// TODO: Refactor this widget to be a function que reciba paramentros y cree el contenido
