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
          children: <Widget>[
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text('Avances'),
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
        constraints: BoxConstraints(maxHeight: 300, minHeight: 25),
        child: Container(
            width: double.infinity,
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
                        child: Expanded(
                          child: LinearPercentIndicator(
                            lineHeight: 8.0,
                            percent: value,
                            progressColor: Colors.lightBlueAccent,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Center(child: Text('$key')),
                        ),
                      ),
                    ],
                  );
                })),
      ),
    );
  }
}
