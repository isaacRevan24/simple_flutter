import 'package:flutter/material.dart';

/// Drop down tipo de avance
class DropDownAdvanceTypes extends StatefulWidget {
  @override
  _DropDownAdvanceTypesState createState() => _DropDownAdvanceTypesState();
}

class _DropDownAdvanceTypesState extends State<DropDownAdvanceTypes> {
  String dropdownValue = 'Done';

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
      items: <String>['Done', 'Pendiente']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

/// Drop down de date filter
class DropDownDate extends StatefulWidget {
  @override
  _DropDownDateState createState() => _DropDownDateState();
}

class _DropDownDateState extends State<DropDownDate> {
  String dropdownValue = 'Ultimas';

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
      items: <String>['Ultimas', 'Viejas']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

/// Drop down de secciones
class DropDownSections extends StatefulWidget {
  @override
  _DropDownSectionsState createState() => _DropDownSectionsState();
}

class _DropDownSectionsState extends State<DropDownSections> {
  String dropdownValue = 'Any';
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
      items: <String>['Any', 'Backend', 'Frontend', 'bd']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

//TODO: Agregar drop down de #
