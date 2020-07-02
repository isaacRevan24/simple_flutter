import 'package:flutter/material.dart';
import 'percent_circular_bar.dart';

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
        return Card(
          child: ListTile(
            leading: FlutterLogo(size: 72.0),
            title: Text('Project number ${entries[index]}'),
            subtitle: Text('Last update in the project  ${dates[index]}'),
            trailing: GeneralProjectIndicator(),
            isThreeLine: true,
            onTap: () {},
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
