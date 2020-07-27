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
  List<Chip> _inChargeChip = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          // Campo donde se agrega el titulo de la tarea
          TextFormField(
            decoration: InputDecoration(labelText: 'Title'),
            validator: (input) => input.isEmpty ? 'Enter some text' : null,
            onSaved: (input) => _taskTitle = input,
            maxLength: 55,
          ),
          // Campo de la descripción de la tarea
          TextFormField(
            decoration: InputDecoration(labelText: 'Description'),
            validator: (input) => input.isEmpty ? 'Enter some text' : null,
            onSaved: (input) => _description = input,
            maxLength: 180,
            maxLines: 3,
          ),
          // Campo del pull request con un checkbox
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
          // Boton que despliega la lista de miembros para asignar
          FlatButton(
            onPressed: () {
              _selectMember();
            },
            child: Text('Seleccionar encargado'),
          ),
          // Lista de miembros a cargo de la tarea
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 200),
            child: Wrap(
              children: _inChargeChip,
            ),
          ),
          // Boton de sumbit del formulario
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
      print(_inCharge);
      print(_inCharge.length);
      print(_description);
      print(_pullRequest);
    }
  }

  void _addChipMember() {
    setState(() {
      _inChargeChip.add(Chip(
        avatar: CircleAvatar(
          backgroundColor: Colors.grey.shade800,
          child: Text('AB'),
        ),
        label: Text('Aaron Burr'),
      ));
    });
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
            setState(() {
              _inCharge.add(_members[i]);
              _addChipMember();
            });
            // print('${_members[i]}');
            Navigator.pop(context);
          },
          child: Text('${_members[i]}'),
        ),
      );
    }
    return options;
  }
}

// TODO: Hacer que cuando se agrega selecciona una opción de memberDialogOption no se pueda seleccionar nuevamente
