import 'package:flutter/material.dart';

///
class TileTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Card(
        child: Container(
          child: Center(
            child: Text("Place holder task ....."),
          ),
        ),
      ),
    );
  }
}
