import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class ProjectPieChart extends StatefulWidget {
  @override
  _ProjectPieChartState createState() => _ProjectPieChartState();
}

class _ProjectPieChartState extends State<ProjectPieChart> {
  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("Frontend", () => 5);
    dataMap.putIfAbsent("Backend", () => 3);
    dataMap.putIfAbsent("Bd", () => 2);
    dataMap.putIfAbsent("Marketing", () => 2);
    dataMap.putIfAbsent("Negocios", () => 3);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              /// Boton para mostrar el % de tareas realizadas
              RaisedButton(
                onPressed: () {},
                child: const Text(
                  'Realizadas',
                  style: TextStyle(fontSize: 20),
                ),
              ),

              /// Boton para mostrar el % de tareas pendientes
              RaisedButton(
                onPressed: () {},
                child: const Text(
                  'Pendientes',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),

          /// Construye la grafica de pastel de las secciones de proyecto
          PieChart(dataMap: dataMap),
        ],
      ),
    );
  }
}
