import 'package:flutter/material.dart';

class Subscription extends StatelessWidget {
  const Subscription({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Subscription plans"),
      ),
      body: Center(
        child: Text('subscription'),
      ),
    );
  }
}
