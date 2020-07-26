import 'package:flutter/material.dart';

import '../options_app_bar.dart';

class InformationOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: optionsAppBar(context, "Information options"),
        body: Center(
          child: Text('Information options page'),
        ),
      ),
    );
  }
}
