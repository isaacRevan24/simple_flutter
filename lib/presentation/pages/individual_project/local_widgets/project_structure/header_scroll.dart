import 'package:flutter/material.dart';
import '../scroll_divider.dart';

const BoxDecoration firstItemDecoration = BoxDecoration(
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(40),
    topLeft: Radius.circular(40),
  ),
);

class ProjecInfotHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: firstItemDecoration,
      child: Column(
        children: <Widget>[
          ScrollDivider(),
          _SubTitle(),
        ],
      ),
    );
  }
}

class _SubTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 35, right: 25, top: 10),
      alignment: Alignment.topLeft,
      child: Text(
        'Project sections',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}

// TODO: Quitar la animación de arriba de bouncing
