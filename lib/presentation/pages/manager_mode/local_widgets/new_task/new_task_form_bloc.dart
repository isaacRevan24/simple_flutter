import 'package:flutter/material.dart';
import 'selector_list_chip.dart';

const List<String> members = ["Severiano", "Arlette", "Mabelis"];

class NewTaskForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          /// Campo donde se agrega el titulo de la tarea
          TextFormField(
            decoration: InputDecoration(labelText: 'Title'),
            // validator: (input) => input.isEmpty ? 'Enter some text' : null,
            // onSaved: (input) => _taskTitle = input,
            maxLength: 55,
          ),

          /// Campo de la descripción de la tarea
          TextFormField(
            decoration: InputDecoration(labelText: 'Description'),
            // validator: (input) => input.isEmpty ? 'Enter some text' : null,
            // onSaved: (input) => _description = input,
            maxLength: 180,
            maxLines: 2,
          ),

          /// Campo del pull request con un checkbox en el que activo = true y apagado = false
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Pull request'),
              // Checkbox(
              // onChanged: (bool value) {}, value: null,
              // value: _pullRequest,
              // onChanged: (bool newValue) {
              //   setState(() {
              //     _pullRequest = newValue;
              //   });
              // },
              // ),
            ],
          ),
          SelectorList(
            members: members,
          ),
        ],
      ),
    );
  }
}

// TODO: Hacer que se muestre el check box
