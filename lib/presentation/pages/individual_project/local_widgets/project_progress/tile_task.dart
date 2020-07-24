import 'package:flutter/material.dart';

/// TileTask que devuelve la info de la tarea
class TileTask extends StatelessWidget {
  final String userName = 'Severiano Atencio';
  final String date = '24/4/2020';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        children: <Widget>[
          _taskContent(),
          _bottomTaskDescription(),
        ],
      ),
    );
  }

  /// Barra inferior de tarea con nombre y fecha
  Container _bottomTaskDescription() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(userName),
          Text(date),
        ],
      ),
    );
  }

  /// taskContent contiene la información de la tarea
  Card _taskContent() {
    return Card(
      child: Container(
        child: Center(
          child: Text("Place holder task ....."),
        ),
      ),
    );
  }
}
