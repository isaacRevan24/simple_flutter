import 'package:flutter/material.dart';

class InviteUrl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Card(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5),
                child: Text(
                  "https//:www---",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: Icon(
                Icons.content_copy,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
