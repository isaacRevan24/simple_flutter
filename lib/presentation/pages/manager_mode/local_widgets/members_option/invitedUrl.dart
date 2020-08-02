import 'package:flutter/material.dart';

class InviteUrl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FlatButton(
          onPressed: () => {},
          child: Text("Generate a invite url"),
          color: Colors.grey,
        ),
        _urlBar(),
      ],
    );
  }

  /// Genera la barra donde se genera el url + el boton para copiar al porta papeles
  SizedBox _urlBar() {
    return SizedBox(
      height: 50,
      child: Card(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5),
                child: Text(
                  "https://www.simple.com/",
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
