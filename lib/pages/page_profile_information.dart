import 'package:flutter/material.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Profile Information"),
      ),
      body: Center(
        child: Text('Profile Information'),
      ),
    );
  }
}
