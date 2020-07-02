import 'package:flutter/material.dart';

class ThemeSwitch extends StatefulWidget {
  @override
  _ThemeSwitchState createState() => _ThemeSwitchState();
}

class _ThemeSwitchState extends State<ThemeSwitch> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 50,
      color: Colors.red,
      icon: Icon(Icons.wb_sunny),
      onPressed: () {
        setState(() {});
      },
    );
  }
}

//TODO: ver como hacer un animateSwitch para el icono de luz y oscuro
