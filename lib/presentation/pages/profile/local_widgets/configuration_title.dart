import 'package:flutter/material.dart';

class ConfigurationTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          bottom: 10,
        ),
        child: Text(
          'Configuration settings',
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
