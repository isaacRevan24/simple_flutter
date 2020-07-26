import 'package:flutter/material.dart';

import '../options_app_bar.dart';

class ThemeOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: optionsAppBar(context, "Themes Options"),
        body: Center(
          child: Text('Themes options pages'),
        ),
      ),
    );
  }
}
