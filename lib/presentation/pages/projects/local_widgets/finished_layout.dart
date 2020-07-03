import 'package:flutter/material.dart';
import 'project_card.dart';

class FinishedProjects extends StatefulWidget {
  @override
  _FinishedProjectsState createState() => _FinishedProjectsState();
}

class _FinishedProjectsState extends State<FinishedProjects> {
  final List<String> entries = <String>['1', '2'];
  final List<String> dates = <String>['66/66/6666', '66/66/6666'];

  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        // TODO: Refactor this widget to be a function que reciba paramentros y cree el contenido
        return Card(
          child: BuildProjectTile(
            index: index,
            entries: entries,
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
