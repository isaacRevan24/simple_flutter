import 'package:flutter/material.dart';

class TasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Tasks',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
