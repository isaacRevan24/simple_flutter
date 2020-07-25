import 'package:flutter/material.dart';

import 'local_widgets/manager_options.dart';

class ManagerMode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _managerModeAppBar(context),
        body: ManagerOptions(),
      ),
    );
  }

  /// App bar de manager mode
  AppBar _managerModeAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        color: Colors.black,
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.of(context).pop(),
      ),
      centerTitle: true,
      title: Text(
        "Manager mode",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
