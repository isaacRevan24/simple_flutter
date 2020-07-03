import 'package:flutter/material.dart';

class IndividualProject extends StatelessWidget {
  const IndividualProject({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Project name"),
      ),
      body: Center(
        child: Text('Individual project'),
      ),
    );
  }
}
