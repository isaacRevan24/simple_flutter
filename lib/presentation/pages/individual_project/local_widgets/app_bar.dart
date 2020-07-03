import 'package:flutter/material.dart';

AppBar buildIndividualProjectAppBar(BuildContext context) {
  return AppBar(
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () => Navigator.of(context).pop(),
    ),
    centerTitle: true,
    title: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text("Project name"),
      ],
    ),
  );
}
