import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProjectStructureBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.4,
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Container(
                // padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Avances',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SectionsLabel(),
          ],
        ),
      ),
    );
  }
}

/// SectionsLabel retorna una lista de las secciones del proyecto y su % de avance
class SectionsLabel extends StatelessWidget {
  final Map<String, double> sectionsName = {
    'Backend': 0.3,
    'Frontend': 0.5,
    'Bd': 0.2,
    'Negocios': 0.4,
    'Marketing': 0.9,
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 120, minHeight: 50),
        child: Container(
          alignment: AlignmentDirectional.center,
          child: ListView.builder(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: sectionsName.length,
            itemBuilder: (BuildContext context, int index) {
              String key = sectionsName.keys.elementAt(index);
              double value = sectionsName.values.elementAt(index);
              return Row(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: LinearPercentIndicator(
                      lineHeight: 8.0,
                      percent: value,
                      progressColor: Colors.lightBlueAccent,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 20,
                        ),
                        ClipOval(
                          child: Container(
                            color: Colors.teal,
                            height: 15,
                            width: 15,
                          ),
                        ),
                        Container(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Text(
                            '$key',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

// TODO: ver como hacer colores para cada sección
// TODO: Hacer que si el titulo de la sección es mas largo se mueva abajo
