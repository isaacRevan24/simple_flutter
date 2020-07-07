import 'package:flutter/material.dart';

/// ProjectTasksCounters muestra el contador de tareas totales, tareas terminadas y tareas pendientes.
class ProjectTasksCounters extends StatelessWidget {
  final List<String> tasksCounter;

  ProjectTasksCounters({@required this.tasksCounter});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _title(),
        _percentageRow(),
      ],
    );
  }

  /// Titulo de la sección
  Container _title() {
    return Container(
      padding: EdgeInsets.only(top: 15, bottom: 20),
      // color: Colors.red,
      child: Text(
        'Project tasks counter',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  /// Retorna una fila con los 3 %
  Widget _percentageRow() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _percentIndicator(0),
          _percentIndicator(1),
          _percentIndicator(2),
        ],
      ),
    );
  }

  /// Dependiendo del inice devuelve (1 = total, 2 = realizadas y 3 = pendientes)
  Row _percentIndicator(int index) {
    switch (index) {
      case 0:
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
        break;
      case 1:
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
        break;
      case 2:
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
        break;
      default:
        return Row(
          children: <Widget>[
            Container(
              child: FlutterLogo(size: 30),
            ),
            Text('Sin tareas'),
          ],
        );
        break;
    }
  }
}

// TODO: ver como hacer el contenedor del numero redondo
