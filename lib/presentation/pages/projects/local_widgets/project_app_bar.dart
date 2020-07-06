import 'package:flutter/material.dart';

/// App bar method that build project app bar
AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    bottom: tabBar(),
    title: projectAppBarTitle(),
    actions: projectAppBarActionButton(),
  );
}

/// List of action buttons of the project app bar (filter)
List<Widget> projectAppBarActionButton() {
  return <Widget>[
    IconButton(
      icon: Icon(
        Icons.filter_list,
        color: Colors.black,
      ),
      onPressed: () {},
    ),
  ];
}

/// Project app bar title
Text projectAppBarTitle() {
  return Text(
    'Your projects',
    style: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  );
}

/// Project app bar tabs
TabBar tabBar() {
  return TabBar(
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
  );
}
