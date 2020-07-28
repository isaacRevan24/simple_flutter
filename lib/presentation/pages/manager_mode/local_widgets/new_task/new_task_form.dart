import 'package:flutter/material.dart';

/// Formulario para crear una nueva tarea
class NewTaskForm extends StatefulWidget {
  @override
  _NewTaskFormState createState() => _NewTaskFormState();
}

class _NewTaskFormState extends State<NewTaskForm> {
  // Variable necesaria para validar el formulario.
  final _formKey = GlobalKey<FormState>();
  // Lista de miembros del proyecto que se les puede asignar a la tarea.
  List<String> _members = ['Isaac Atencio', 'Arlette Perez', 'Mabelis Hidalgo'];
  // Lista de tags creados por el manager para asignar.
  List<String> _tags = ['bd', 'frontend', 'backend'];
  // Titulo de la tarea.
  String _taskTitle;
  // Descripción de la tarea.
  String _description;
  // Si es true la tarea debe ser pasado por procesos de validación y si no pasa directamente a los avances de proyecto.
  bool _pullRequest = false;
  // Lista de miembros encargados de realizar la tarea presente.
  List<String> _inCharge = [];
  // Lista de tags seleccionados para la tarea.
  List<String> _selectedTags = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            /// Campo donde se agrega el titulo de la tarea
            TextFormField(
              decoration: InputDecoration(labelText: 'Title'),
              validator: (input) => input.isEmpty ? 'Enter some text' : null,
              onSaved: (input) => _taskTitle = input,
              maxLength: 55,
            ),

            /// Campo de la descripción de la tarea
            TextFormField(
              decoration: InputDecoration(labelText: 'Description'),
              validator: (input) => input.isEmpty ? 'Enter some text' : null,
              onSaved: (input) => _description = input,
              maxLength: 180,
              maxLines: 3,
            ),

            /// Campo del pull request con un checkbox en el que activo = true y apagado = false
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

            /// Boton que te muestra un dialogBox con los nombres de los miebros para escoger
            FlatButton(
              color: Colors.grey,
              onPressed: () {
                _selectMember();
              },
              child: Text('Seleccionar encargado'),
            ),

            /// Lista de chips de miembros a cargo de la tarea que se puede scrolear horizontalmente si se
            /// pasa del tamaño
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 40),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _inCharge.length,
                itemBuilder: (BuildContext context, int index) {
                  return _inChargeMemberChip(index);
                },
              ),
            ),

            /// Boton que muestra las opciones de tags disponibles.
            FlatButton(
              color: Colors.grey,
              onPressed: () {
                _selectTag();
              },
              child: Text('Seleccionar tag'),
            ),

            /// Lista de chips de tags seleccionados para la tarea.
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 40),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _selectedTags.length,
                itemBuilder: (BuildContext context, int index) {
                  return _tagChips(index);
                },
              ),
            ),

            /// Boton que llama el metodo para validar el formulario y procesarlo.
            RaisedButton(
              onPressed: _submit,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  /// Metodo para procesar la data de los formularios, valida los campos obligatorios + imprime los valores en la
  /// consola
  void _submit() {
    if (_formKey.currentState.validate()) {
      if (_inCharge.length > 0) {
        // guarda el estado de los TextForms a sus variables.
        _formKey.currentState.save();
        // Muestra una snackBar con feedback
        Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text('Processing Data')));

        print(_taskTitle);
        print(_inCharge);
        print(_inCharge.length);
        print(_description);
        print(_selectedTags);
        print(_pullRequest);
      } else {
        Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text('Have to add a member')));
      }
    }
  }

  /// Metodo para crear el dialog box
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

  /// Crea una lista de miembros disponibles para seleccionar y al elegir uno se elimina de la lista _members y se
  /// agrega a la lista _inCharge para mostrar como chips
  List<Widget> _membersDialogOptions(BuildContext context) {
    List<Widget> options = [];
    for (var i = 0; i <= this._members.length - 1; i++) {
      options.add(
        SimpleDialogOption(
          onPressed: () {
            setState(() {
              _inCharge.add(_members[i]);
              _members.remove(_members[i]);
            });
            Navigator.pop(context);
          },
          child: Text(_members[i]),
        ),
      );
    }
    return options;
  }

  /// Crea una lista de chips que se muestran con el o los miembros seleccionados para la tarea. El chip tiene una x
  /// para eliminar el miembro y cuando se toca remueve el chip de la pantalla y remueve el miembro de _inCharge y lo
  /// vuelve a ingresar a _members para que se muestre como opción a escoger.
  Container _inChargeMemberChip(int index) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: 60),
        child: Chip(
          avatar: CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            // child: Text('AB'),
          ),
          label: Text(
            _inCharge[index],
            style: TextStyle(fontSize: 12),
          ),
          deleteIcon: Icon(
            Icons.cancel,
          ),
          deleteIconColor: Colors.red,
          // Al tocar el icono rojo se elimina el chip.
          onDeleted: () {
            setState(() {
              _members.add(_inCharge[index]);
              _inCharge.remove(_inCharge[index]);
            });
          },
        ),
      ),
    );
  }

  /// Crea el DialoBox para seleccionar tags
  Future<void> _selectTag() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Select tag'),
          children: _tagsDialogOptions(context),
        );
      },
    );
  }

  /// Crea la lista de tags disponibles de la variable _tags y al seleccionarse se agregan a _selectedTags y se remueven
  /// de esa lista
  List<Widget> _tagsDialogOptions(BuildContext context) {
    List<Widget> options = [];
    for (var i = 0; i <= this._tags.length - 1; i++) {
      options.add(
        SimpleDialogOption(
          onPressed: () {
            setState(() {
              _selectedTags.add(_tags[i]);
              _tags.remove(_tags[i]);
            });
            Navigator.pop(context);
          },
          child: Text('#${_tags[i]}'),
        ),
      );
    }
    return options;
  }

  /// Crea una lista de chips con el nombre de los tags con una x para eliminarlos, si se toca la x se elimina el chip
  /// removiendo el tag de la variable _selectedTags y re-agregarlos a _tags para que se muestre como opción.
  Container _tagChips(int index) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: 60),
        child: Chip(
          avatar: CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            // child: Text('AB'),
          ),
          label: Text(
            '# ${_selectedTags[index]}',
            style: TextStyle(fontSize: 12),
          ),
          deleteIcon: Icon(
            Icons.cancel,
          ),
          deleteIconColor: Colors.red,
          // Al tocar el icono rojo se elimina el chip.
          onDeleted: () {
            setState(() {
              _tags.add(_selectedTags[index]);
              _selectedTags.remove(_selectedTags[index]);
            });
          },
        ),
      ),
    );
  }
}

// TODO: Hacer que cuando se agrega selecciona una opción de memberDialogOption no se pueda seleccionar nuevamente
// TODO: Crear un indicador para que el usuario sepa que la tarea fue creada
