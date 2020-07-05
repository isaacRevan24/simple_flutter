import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ManagerInfoPresentation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            alignment: Alignment.topLeft,
            child: Text(
              'Manager',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
