import 'dart:ui';

import 'package:flutter/material.dart';

class AddMember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _addMemberAppbar(context),
        body: Center(
          child: Text("add member"),
        ),
      ),
    );
  }

  AppBar _addMemberAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 10,
      leading: IconButton(
        color: Colors.black,
        icon: Icon(Icons.close),
        onPressed: () => Navigator.of(context).pop(),
      ),
      centerTitle: true,
      title: Text(
        "Add member",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
