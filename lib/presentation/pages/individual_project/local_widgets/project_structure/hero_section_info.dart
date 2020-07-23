import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HeroSectionInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _sectionDetailAppbar(context),
        body: _sectionDetails(),
      ),
    );
  }

  /// AppBar de hero section info
  AppBar _sectionDetailAppbar(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text(
        'Section name',
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }

  /// El contenedor que engloba la barra, los botones y la lista de tareas
  Container _sectionDetails() {
    return Container(
      color: Colors.white,
      child: Center(
        child: FractionallySizedBox(
          widthFactor: 0.8,
          heightFactor: 0.9,
          child: Column(
            children: <Widget>[
              // Espacio en blanco
              SizedBox(
                height: 20,
              ),
              Flexible(
                flex: 2,
                child: _percentBar(),
              ),
              Flexible(
                flex: 8,
                child: Column(
                  children: <Widget>[
                    _header(),
                    _listTasks(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Muestra la barra de % arriba
  Container _percentBar() {
    return Container(
      color: Colors.white,
      child: LinearPercentIndicator(
        lineHeight: 20.0,
        percent: 0.8,
        center: Text("80.0%"),
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: Colors.green,
      ),
    );
  }

  /// Crea la lista de tareas realizadas o pendientes dependiendo de la lista
  Expanded _listTasks() {
    return Expanded(
      child: ListView.builder(
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: Icon(
                Icons.done_outline,
                color: Colors.green,
              ),
              title: Text('Titulo de la tarea'),
              subtitle: Text('Explicación de la taréa'),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlutterLogo(
                    size: 20,
                  ),
                  Text('Nombre'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  /// Tiene los botones Realizadas y Pendientes
  Container _header() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
              color: Colors.indigo,
              onPressed: () => {},
              child: Text(
                'Realizadas',
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            FlatButton(
              color: Colors.pink,
              onPressed: () => {},
              child: Text(
                'Pendientes',
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// TODO: Hacer que al tocar el boton pendiente y el realizado mande la info a la lista
// TODO: Al dejar apretado el tile te debe salir una opción de ir a esa tarea.
