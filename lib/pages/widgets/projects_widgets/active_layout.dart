import 'package:flutter/material.dart';
import 'package:simple_flutter/pages/widgets/projects_widgets/project_card.dart';

class ActiveProjects extends StatefulWidget {
  const ActiveProjects({Key key}) : super(key: key);

  @override
  _ActiveProjectsState createState() => _ActiveProjectsState();
}

class _ActiveProjectsState extends State<ActiveProjects> {
  // TODO: Ver como pasar valores personalizados
  final List<String> entries = <String>['1', '2', '3'];
  final List<String> dates = <String>['66/66/6666', '66/66/6666', '66/66/6666'];

  @override
  Widget build(BuildContext context) {
    // Se construye la lista de proyectos aquí
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        // TODO: Refactor this widget to be a function que reciba paramentros y cree el contenido
        return Card(
          child: buildProjectCard(index, entries, dates),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}

// TODO: Ver el diseño con grid en vez de tile
// TODO: Hacer una funcion intermedio que maneje el filtrado entre grid y tile
