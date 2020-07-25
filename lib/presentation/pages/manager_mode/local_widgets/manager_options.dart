import 'package:flutter/material.dart';

// Iconos para cada opción con su respectivo nombre
const Icon informationIcon = Icon(
  Icons.priority_high,
  size: iconSize,
);
const Icon configurationIcon = Icon(
  Icons.settings,
  size: iconSize,
);
const Icon membersIcon = Icon(
  Icons.group,
  size: iconSize,
);
const Icon themesIcon = Icon(
  Icons.color_lens,
  size: iconSize,
);

// Icon size
const double iconSize = 75;

/// ManagerOptions retorna la lista de opciones que el manager tiene disponible
class ManagerOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // first row
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _optionBuilder("Information", informationIcon),
                _optionBuilder("Configuration", configurationIcon),
              ],
            ),
          ),
          // second row
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _optionBuilder("Members", membersIcon),
                _optionBuilder("Themes", themesIcon),
              ],
            ),
          ),
          // boton de nueva tarea
          _newTask(),
        ],
      ),
    );
  }

  /// optionBuilder recibe el titulo de la opción, icono y una funcion para redirección
  /// al hacer onPress
  Flexible _optionBuilder(String titleLabel, Icon optionIcon) {
    return Flexible(
      flex: 1,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Card(
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              optionIcon,
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Center(
                  child: Text(titleLabel),
                ),
              ),
            ],
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
        height: 115,
        padding: EdgeInsets.only(bottom: 20),
        child: Card(
          elevation: 5,
          color: Colors.red,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'nueva tarea',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.add_circle),
            ],
          ),
        ),
      ),
    );
  }
}
