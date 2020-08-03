import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'invited_url.dart';
import 'list_of_members.dart';
import 'add_member.dart';
import '../options_app_bar.dart';

// Titulo de app bar para "Members options"
const String appBarTitle = "Members options";

/// Página para manejar miembros del proyecto
class MembersOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: optionsAppBar(context, appBarTitle),
        body: Column(
          children: <Widget>[
            // List of members
            ListOfMembers(),
            // Add member
            _addMemberButton(context),
            // Remove member
            InviteUrl(),
          ],
        ),
      ),
    );
  }

  FlatButton _addMemberButton(BuildContext context) {
    return FlatButton(
      color: Colors.red,
      onPressed: () {
        Navigator.push(
          context,
          PageTransition(
            duration: Duration(milliseconds: 200),
            type: PageTransitionType.rightToLeft,
            child: AddMember(),
          ),
        );
      },
      child: Text("Add member"),
    );
  }
}
