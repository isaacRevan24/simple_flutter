import 'package:flutter/material.dart';

/// ProjectTasksCounters muestra el contador de tareas totales, tareas terminadas y tareas pendientes.
class ProjectTasksCounters extends StatelessWidget {
  final List<String> percents = ['40', '70', '20'];

  // ProjectTasksCounters({this.percents});
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
      padding: EdgeInsets.symmetric(vertical: 15),
      // color: Colors.red,
      child: Text('Project tasks counter'),
    );
  }

  Widget _percentageRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _percentIndicator(0),
        _percentIndicator(1),
        _percentIndicator(2),
      ],
    );
  }

  Row _percentIndicator(int index) {
    switch (index) {
      case 0:
        return Row(
          children: <Widget>[
            Container(
              color: Colors.red,
              child: FlutterLogo(size: 30),
            ),
            Text('Total: ${percents[0]}'),
          ],
        );
        break;
      case 1:
        return Row(
          children: <Widget>[
            Container(
              color: Colors.red,
              child: FlutterLogo(size: 30),
            ),
            Text('Realizadas: ${percents[1]}'),
          ],
        );
        break;
      case 2:
        return Row(
          children: <Widget>[
            Container(
              color: Colors.red,
              child: FlutterLogo(size: 30),
            ),
            Text('Pendientes: ${percents[2]}'),
          ],
        );
        break;
      default:
        return Row(
          children: <Widget>[
            Container(
              color: Colors.red,
              child: FlutterLogo(size: 30),
            ),
            Text('100'),
          ],
        );
        break;
    }
  }
}

/// Contadores de tareas, en el que dice el total de tareas, tareas realizadas y pendientes

/// Muestra el tipo de % (total, realizadas y pendientes)
