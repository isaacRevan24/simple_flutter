import 'package:flutter/material.dart';

class ProjectProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          _searchBar(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                DropDownXXX(),
                DropDownXXX(),
                DropDownXXX(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Barra de busqueda de project progess
  Padding _searchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search ...',
        ),
      ),
    );
  }
}

/// Drop down especifico
class DropDownXXX extends StatefulWidget {
  @override
  _DropDownXXXState createState() => _DropDownXXXState();
}

class _DropDownXXXState extends State<DropDownXXX> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
