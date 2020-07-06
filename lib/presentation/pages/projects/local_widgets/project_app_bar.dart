import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    bottom: TabBar(
      labelStyle: TextStyle(color: Colors.black),
      unselectedLabelColor: Colors.grey,
      labelColor: Colors.black,
      tabs: <Widget>[
        Tab(
          text: 'Active',
        ),
        Tab(
          text: 'Finished',
        ),
      ],
    ),
    title: Text(
      'Your projects',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.filter_list,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
    ],
  );
}
