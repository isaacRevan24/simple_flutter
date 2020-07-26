import 'package:flutter/material.dart';

/// Formulario para crear una nueva tarea
class NewTaskForm extends StatefulWidget {
  @override
  _NewTaskFormState createState() => _NewTaskFormState();
}

class _NewTaskFormState extends State<NewTaskForm> {
  final _formKey = GlobalKey<FormState>();
  String _taskTitle, _description;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Title'),
            validator: (input) => input.isEmpty ? 'Enter some text' : null,
            onSaved: (input) => _taskTitle = input,
            maxLength: 55,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Description'),
            validator: (input) => input.isEmpty ? 'Enter some text' : null,
            onSaved: (input) => _description = input,
            maxLength: 180,
            maxLines: 3,
          ),
          RaisedButton(
            onPressed: _submit,
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }

  /// Metodo para procesar la data de los formularios
  void _submit() {
    if (_formKey.currentState.validate()) {
      // Metodo que guarda la data de los formularios en las variables
      _formKey.currentState.save();
      // Snack bar de feedback
      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text('Processing Data')));

      print(_taskTitle);
      print(_description);
    }
  }
}
