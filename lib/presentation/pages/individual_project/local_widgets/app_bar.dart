import 'package:flutter/material.dart';

AppBar buildIndividualProjectAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      color: Colors.black,
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () => Navigator.of(context).pop(),
    ),
    centerTitle: true,
    title: Text(
      "Project name",
      style: TextStyle(color: Colors.black),
    ),
  );
}
