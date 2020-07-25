import 'package:flutter/material.dart';

/// ProjectTasksCounters muestra el contador de tareas totales, tareas terminadas y tareas pendientes.
class ProjectTasksCounters extends StatelessWidget {
  final List<String> tasksCounter;

  ProjectTasksCounters({@required this.tasksCounter});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _percentTotal(),
        _percentDone(),
        _percentNotDone(),
      ],
    );
  }

  /// percentTotal retorna
  Row _percentTotal() {
    return Row(
      children: <Widget>[
        Container(
          child: Icon(Icons.clear_all),
        ),
        Text('Total: '),
        Container(
          color: Colors.blue,
          child: Text(
            '${tasksCounter[0]}',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }

  Row _percentDone() {
    return Row(
      children: <Widget>[
        Container(
          child: Icon(
            Icons.assignment_turned_in,
          ),
        ),
        Text('Realizadas: '),
        Container(
          color: Colors.green,
          child: Text(
            '${tasksCounter[1]}',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }

  Row _percentNotDone() {
    return Row(
      children: <Widget>[
        Container(
          child: Icon(Icons.pause_circle_outline),
        ),
        Text('Pendientes: '),
        Container(
          color: Colors.grey,
          child: Text(
            '${tasksCounter[2]}',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}

// TODO: ver como hacer el contenedor del numero redondo
