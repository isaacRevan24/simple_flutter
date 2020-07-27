import 'package:flutter/material.dart';

/// Formulario para crear una nueva tarea
class NewTaskForm extends StatefulWidget {
  @override
  _NewTaskFormState createState() => _NewTaskFormState();
}

class _NewTaskFormState extends State<NewTaskForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> _members = ['Isaac', 'Arlette', 'Mabelis'];
  String _taskTitle, _description;
  bool _pullRequest = false;
  List<String> _inCharge = [];

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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Pull request'),
              SizedBox(
                width: 20,
              ),
              Checkbox(
                value: _pullRequest,
                onChanged: (bool newValue) {
                  setState(() {
                    _pullRequest = newValue;
                  });
                },
              ),
            ],
          ),
          FlatButton(
            onPressed: () {
              _selectMember();
            },
            child: Text('Seleccionar encargado'),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.grey.shade800,
              child: Text('AB'),
            ),
            label: Text('Aaron Burr'),
          ),
          RaisedButton(
            onPressed: _submit,
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }

  /// Metodo para procesar la data de los formularios, valida los campos obligatorios
  void _submit() {
    if (_formKey.currentState.validate() && _inCharge.length > 0) {
      // Metodo que guarda la data de los formularios en las variables
      _formKey.currentState.save();
      // Snack bar de feedback
      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text('Processing Data')));

      print(_taskTitle);
      print(_inCharge.length);
      print(_description);
      print(_pullRequest);
    }
  }

  /// Retorna la lista de miembros para seleccionar para estar en cargo
  Future<void> _selectMember() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Select member'),
          children: _membersDialogOptions(context),
        );
      },
    );
  }

  /// Crea la lista que _selectMember usa para mostrar en el dialog box
  List<Widget> _membersDialogOptions(BuildContext context) {
    List<Widget> options = [];
    for (var i = 0; i <= this._members.length - 1; i++) {
      options.add(
        SimpleDialogOption(
          onPressed: () {
            print('opción 1');
            Navigator.pop(context);
          },
          child: Text('${_members[i]}'),
        ),
      );
    }
    return options;
  }
}
