import 'package:flutter/material.dart';
// import 'selector_list_chip.dart';
import '../../../../../models/new_task.dart';

const List<String> members = ["Severiano", "Arlette", "Mabelis"];

class NewTaskForm extends StatefulWidget {
  @override
  _NewTaskFormState createState() => _NewTaskFormState();
}

class _NewTaskFormState extends State<NewTaskForm> {
  final _formKey = GlobalKey<FormState>();
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
            TextFormField(
              decoration: InputDecoration(labelText: 'Title'),
              // validator: (input) => input.isEmpty ? 'Enter some text' : null,
              onSaved: (input) => _newTask.addTitle(input),
              maxLength: 55,
            ),

            TextFormField(
              decoration: InputDecoration(labelText: 'Description'),
              // validator: (input) => input.isEmpty ? 'Enter some text' : null,
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
                  value: _newTask.pullRequest,
                  onChanged: (bool newValue) {
                    setState(() {
                      _newTask.setPullRequest(newValue);
                    });
                  },
                ),
              ],
            ),
            RaisedButton(
              onPressed: _submit,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState.validate()) {
      // guarda el estado de los TextForms a sus variables.
      _formKey.currentState.save();

      _newTask.imprimirValores();
      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text('Processing Data')));
    }
  }
}

// TODO: Hacer que se muestre el check box
