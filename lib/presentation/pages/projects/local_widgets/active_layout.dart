import 'package:flutter/material.dart';
import '../../../widgets/build_project_tile.dart';

class ActiveProjects extends StatefulWidget {
  @override
  _ActiveProjectsState createState() => _ActiveProjectsState();
}

class _ActiveProjectsState extends State<ActiveProjects> {
  final List<String> entries = <String>['1', '2', '3', '4', '5'];

  @override
  Widget build(BuildContext context) {
    // Se construye la lista de proyectos aquí
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

// TODO: Make BuildProjectTile a complete widgete that recibe parameters
// TODO: Ver el diseño con grid en vez de tile
// TODO: Hacer una funcion intermedio que maneje el filtrado entre grid y tile
// TODO: Ver como pasar valores personalizados
