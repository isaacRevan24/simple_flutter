import 'package:flutter/material.dart';

///
class TileTask extends StatelessWidget {
  final String userName = 'Severiano Atencio';
  final String date = '24/4/2020';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        children: <Widget>[
          _taskContent(),
          _bottomTaskDescription(),
        ],
      ),
    );
  }

  Container _bottomTaskDescription() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(userName),
          Text(date),
        ],
      ),
    );
  }

  Card _taskContent() {
    return Card(
      child: Container(
        child: Center(
          child: Text("Place holder task ....."),
        ),
      ),
    );
  }
}
