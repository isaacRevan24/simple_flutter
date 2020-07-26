import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'theme_option/theme_option.dart';
import 'configuration_option/configuration_option.dart';
import 'information_option/information_option.dart';
import 'members_option/members_option.dart';
import 'new_task/new_task.dart';

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
                _optionBuilder(
                  context,
                  "Information",
                  informationIcon,
                  InformationOptions(),
                ),
                _optionBuilder(
                  context,
                  "Configuration",
                  configurationIcon,
                  ConfigurationOptions(),
                ),
              ],
            ),
          ),
          // second row
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _optionBuilder(
                  context,
                  "Members",
                  membersIcon,
                  MembersOptions(),
                ),
                _optionBuilder(
                  context,
                  "Themes",
                  themesIcon,
                  ThemeOptions(),
                ),
              ],
            ),
          ),
          // boton de nueva tarea
          _newTask(context),
        ],
      ),
    );
  }

  /// Unción que retorna el boton de opción para el manager option, recive el contexto,
  /// el titulo de la opción, el icono de la opción y la función de la página de la opción
  /// para redirigir.
  Flexible _optionBuilder(
    BuildContext context,
    String titleLabel,
    Icon optionIcon,
    Widget pageOption,
  ) {
    return Flexible(
      flex: 1,
      child: Container(
        margin: EdgeInsets.all(20),
        child: InkWell(
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
          onTap: () {
            Navigator.push(
              context,
              PageTransition(
                duration: Duration(milliseconds: 200),
                type: PageTransitionType.rightToLeft,
                child: pageOption,
              ),
            );
          },
        ),
      ),
    );
  }

  /// Boton para crear nueva tarea
  Flexible _newTask(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        height: 115,
        padding: EdgeInsets.only(bottom: 20),
        child: InkWell(
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
          onTap: () {
            Navigator.push(
              context,
              PageTransition(
                duration: Duration(milliseconds: 200),
                type: PageTransitionType.rightToLeft,
                child: NuevaTarea(),
              ),
            );
          },
        ),
      ),
    );
  }
}
