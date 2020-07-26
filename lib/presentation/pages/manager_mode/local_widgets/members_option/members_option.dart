import 'package:flutter/material.dart';

import '../options_app_bar.dart';

class MembersOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: optionsAppBar(context, "Members options"),
        body: Center(
          child: Text('Members options page'),
        ),
      ),
    );
  }
}
