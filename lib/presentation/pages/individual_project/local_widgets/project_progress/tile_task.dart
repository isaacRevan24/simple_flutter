import 'package:flutter/material.dart';

/// TileTask que devuelve la info de la tarea
class TileTask extends StatelessWidget {
  final String userName = 'Severiano Atencio';
  final String date = '24/4/2020';
  final String taskTitle = 'Titulo de la tarea';
  final String taskDescription =
      'If you’ve solved hard problems with phones / wearables (sealing, signal processing, inductive charging, power mgmt, etc), please consider working at engineering@neuralink.com';
  final List<String> tags = [
    'bd',
    'tarde',
    'front',
    'fdfd',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: <Widget>[
          _taskContent(),
          _bottomTaskDescription(),
        ],
      ),
    );
  }

  /// taskContent contiene la información de la tarea
  Card _taskContent() {
    return Card(
      color: Colors.white24,
      child: Column(
        children: <Widget>[
          /// Titulo de la tarea
          Center(
            child: Text(
              taskTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          /// Descripción de la tarea
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              taskDescription,
              textAlign: TextAlign.center,
            ),
          ),

          /// Lista de tags de la tarea
          Wrap(
            alignment: WrapAlignment.center,
            direction: Axis.horizontal,
            children: _tagsListWrap(),
          ),
        ],
      ),
    );
  }

  /// Toma la lista de tags y los convierte en items para el Wrap
  List<Widget> _tagsListWrap() {
    List<Widget> tagsWraps = [];
    for (var tag in this.tags) {
      tagsWraps.add(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Chip(
            label: Text('# $tag'),
          ),
        ),
      );
    }
    return tagsWraps;
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
}
