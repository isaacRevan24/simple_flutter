import 'package:flutter/material.dart';

class AddMember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _addMemberAppbar(context),
        body: _addMemberOptions(),
      ),
    );
  }

  Container _addMemberOptions() {
    return Container(
      child: Center(
        child: Text("add member"),
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

// TODO: Optión para agregar usuario de tu lista de amigos
// TODO: Optión para agregar usuario buscando por medio de su @usuario
