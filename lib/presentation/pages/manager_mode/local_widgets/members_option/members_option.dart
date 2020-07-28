import 'package:flutter/material.dart';

import '../options_app_bar.dart';

/// Titulo de app bar para "Members options"
const String appBarTitle = "Members options";

/// Página para manejar miembros del proyecto
class MembersOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: optionsAppBar(context, appBarTitle),
        body: Center(
          child: Text('Members options page'),
        ),
      ),
    );
  }
}
