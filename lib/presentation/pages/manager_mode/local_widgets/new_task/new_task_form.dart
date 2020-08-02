import 'package:flutter/material.dart';

import '../../../../../usecase/new_task_form.dart';

/// Formulario para crear una nueva tarea
class NewTaskForm extends StatefulWidget {
  @override
  _NewTaskFormState createState() => _NewTaskFormState();
}

class _NewTaskFormState extends State<NewTaskForm> {
  /// Variable necesaria para validar el formulario.
  final _formKey = GlobalKey<FormState>();

  /// Objeto de nueva tarea
  final _newTask = NewTask();

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
              onSaved: (input) => _newTask.addTitle(input),
              maxLength: 55,
            ),

            /// Campo de la descripción de la tarea
            TextFormField(
              decoration: InputDecoration(labelText: 'Description'),
              validator: (input) => input.isEmpty ? 'Enter some text' : null,
              onSaved: (input) => _newTask.addDescriptio(input),
              maxLength: 180,
              maxLines: 2,
            ),

            /// Campo del pull request con un checkbox en el que activo = true y apagado = false
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Pull request'),
                Checkbox(
                  value: _newTask.getPullRequest(),
                  onChanged: (bool newValue) {
                    setState(() {
                      _newTask.setPullRequest(newValue);
                    });
                  },
                ),
              ],
            ),

            /// Boton que muestra las opciones de tags disponibles.
            FlatButton(
              color: Colors.grey,
              onPressed: () {
                _selectSection();
              },
              child: Text('Project section'),
            ),

            /// Lista de chips de tags seleccionados para la tarea.
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 40),
              child: _sectionChips(_newTask.selectedSectionName()),
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
                itemCount: _newTask.inChargeListLength(),
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
                itemCount: _newTask.selectedTagsLength(),
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
      // if (_inCharge.length > 0) {
      // guarda el estado de los TextForms a sus variables.
      _formKey.currentState.save();
      _newTask.imprimirValores();
      // Muestra una snackBar con feedback
      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text('Processing Data')));

      // } else {
      //   Scaffold.of(context)
      //       .showSnackBar(SnackBar(content: Text('Have to add a member')));
      // }
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
    for (var i = 0; i <= _newTask.memberListLength(); i++) {
      options.add(
        SimpleDialogOption(
          onPressed: () {
            setState(() {
              _newTask.addInChargeMember(i);
              Navigator.pop(context);
            });
          },
          child: Text(_newTask.memberName(i)),
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
            _newTask.inChargeMember(index),
            style: TextStyle(fontSize: 12),
          ),
          deleteIcon: Icon(
            Icons.cancel,
          ),
          deleteIconColor: Colors.red,
          // Al tocar el icono rojo se elimina el chip.
          onDeleted: () {
            setState(() {
              _newTask.removeInChargeMember(index);
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
    for (var i = 0; i <= _newTask.tagListLength(); i++) {
      options.add(
        SimpleDialogOption(
          onPressed: () {
            setState(() {
              _newTask.addTag(i);
            });
            Navigator.pop(context);
          },
          child: Text('#${_newTask.tagName(i)}'),
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
            '# ${_newTask.selectedTagName(index)}',
            style: TextStyle(fontSize: 12),
          ),
          deleteIcon: Icon(
            Icons.cancel,
          ),
          deleteIconColor: Colors.red,
          // Al tocar el icono rojo se elimina el chip.
          onDeleted: () {
            setState(() {
              _newTask.removeSelectedTag(index);
            });
          },
        ),
      ),
    );
  }

  /// Crea el DialoBox para seleccionar tags
  Future<void> _selectSection() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Select tag'),
          children: _sectionDialogOptions(context),
        );
      },
    );
  }

  /// Crea la lista de tags disponibles de la variable _tags y al seleccionarse se agregan a _selectedTags y se remueven
  /// de esa lista
  List<Widget> _sectionDialogOptions(BuildContext context) {
    List<Widget> options = [];
    for (var i = 0; i <= _newTask.sectionListLength(); i++) {
      options.add(
        SimpleDialogOption(
          onPressed: () {
            setState(() {
              _newTask.selectSection(i);
            });
            Navigator.pop(context);
          },
          child: Text('#${_newTask.sectionLabel(i)}'),
        ),
      );
    }
    return options;
  }

  /// Crea una lista de chips con el nombre de los tags con una x para eliminarlos, si se toca la x se elimina el chip
  /// removiendo el tag de la variable _selectedTags y re-agregarlos a _tags para que se muestre como opción.
  Container _sectionChips(String sectionName) {
    if (sectionName.length == 0) {
      return Container(
        margin: EdgeInsets.only(right: 5),
        child: ConstrainedBox(
          constraints: BoxConstraints(minWidth: 60),
          child: Chip(
            label: Text(
              "Plis select a section",
              style: TextStyle(fontSize: 12),
            ),
          ),
        ),
      );
    } else {
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
              // '# ${_selectedSection[index]}',
              '# $sectionName',
              style: TextStyle(fontSize: 12),
            ),
            deleteIcon: Icon(
              Icons.cancel,
            ),
            deleteIconColor: Colors.red,
            // Al tocar el icono rojo se elimina el chip.
            onDeleted: () {
              setState(() {
                _newTask.removeSelectedSection();
              });
            },
          ),
        ),
      );
    }
  }
}

// TODO: Hacer que cuando se agrega selecciona una opción de memberDialogOption no se pueda seleccionar nuevamente
// TODO: Crear un indicador para que el usuario sepa que la tarea fue creada
// TODO: Agregar opción de sección de tarea
// TODO: Usar un sistema de state management para usar el form
// TODO: Agregar campo de fecha
