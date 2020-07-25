import 'package:flutter/material.dart';

/// ManagerOptions retorna la lista de opciones que el manager tiene disponible
class ManagerOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _optionBuilder("Information"),
                _optionBuilder("Configuration"),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _optionBuilder("Members"),
                _optionBuilder("Themes"),
              ],
            ),
          ),
          _newTask(),
        ],
      ),
    );
  }

  /// optionBuilder recibe el titulo de la opción y una funcion para redirección
  /// al hacer onPress
  Flexible _optionBuilder(String titleLabel) {
    return Flexible(
      flex: 1,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Card(
          child: Center(
            child: Text(titleLabel),
          ),
        ),
      ),
    );
  }

  /// Boton para crear nueva tarea
  Flexible _newTask() {
    return Flexible(
      flex: 1,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 35),
        child: Card(
          color: Colors.red,
          child: Center(
            child: Text('nueva tarea'),
          ),
        ),
      ),
    );
  }
}
