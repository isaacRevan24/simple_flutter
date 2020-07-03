import 'package:flutter/material.dart';

class NotificationsConfig extends StatelessWidget {
  const NotificationsConfig({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Notification configuration"),
      ),
      body: Center(
        child: Text('Notifications'),
      ),
    );
  }
}
