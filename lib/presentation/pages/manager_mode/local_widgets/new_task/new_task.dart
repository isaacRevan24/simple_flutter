import 'package:flutter/material.dart';

import 'new_task_form.dart';

class NuevaTarea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _crearTarea(context),
        body: NewTaskForm(),
      ),
    );
  }

  /// App bar de manager mode
  AppBar _crearTarea(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 10,
      leading: IconButton(
        color: Colors.black,
        icon: Icon(Icons.close),
        onPressed: () => Navigator.of(context).pop(),
      ),
      centerTitle: true,
      title: Text(
        "Crear tarea",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
