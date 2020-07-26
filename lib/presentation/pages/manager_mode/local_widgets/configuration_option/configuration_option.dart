import 'package:flutter/material.dart';

import '../options_app_bar.dart';

class ConfigurationOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: optionsAppBar(context, "Configuration Options"),
        body: Center(
          child: Text('Configuration options page'),
        ),
      ),
    );
  }
}
