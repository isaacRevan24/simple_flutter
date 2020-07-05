import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../scroll_divider.dart';

const BoxDecoration firstItemDecoration = BoxDecoration(
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(40),
    topLeft: Radius.circular(40),
  ),
);

// Text variable
const String descriptionTest =
    "Crear una estética que se refleje en la app y en la empresa internamente. Un status de persona que usa nuestra app. Como serán nuestras oficinas y nuestras redes sociales y nuestro marketing ";

class ProjecInfotHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: firstItemDecoration,
      child: Column(
        children: <Widget>[
          ScrollDivider(),
          _Subtitle(),
          _ProjectDescription(),
        ],
      ),
    );
  }
}

class _ProjectDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        descriptionTest,
        style: TextStyle(fontSize: 15),
      ),
    );
  }
}

class _Subtitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      alignment: Alignment.topLeft,
      child: Text(
        'Description',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}

// TODO: Quitar la animación de arriba de bouncing
