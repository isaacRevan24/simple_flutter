import 'package:flutter/material.dart';

class ManagerListCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _TitleText(),
        _ManagerListCards(),
      ],
    );
  }
}

class _TitleText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25, top: 20, right: 25),
      alignment: Alignment.topLeft,
      child: Text(
        'Manager',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}

class _ManagerListCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      alignment: Alignment.topLeft,
      child: SizedBox(
        height: 140.0,
        child: ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          // max 5 manager
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) => Card(
            child: _ManagerCard(),
          ),
        ),
      ),
    );
  }
}

class _ManagerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlutterLogo(size: 70),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 100),
            child: Text('Manager Name'),
          ),
        ],
      ),
    );
  }
}
