import 'package:flutter/material.dart';

import 'new_task_form.dart';

/// Página para crear nuava tarea
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

  /// App bar del formulario de nueva tarea
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

// TODO: Hacer que si se toca la x cuando los campos del formulario han cambiado, le salga un alert preguntando si desea descartar la tarea o continuar escribiendo
