import 'package:flutter/material.dart';

class MembersListCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _TitleText(),
        _MemberListCard(),
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
        'Members',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}

class _MemberListCard extends StatelessWidget {
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
          // max 10 manager for free
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => Card(
            child: _MemberCard(),
          ),
        ),
      ),
    );
  }
}

class _MemberCard extends StatelessWidget {
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
            child: Text('Member Name'),
          ),
        ],
      ),
    );
  }
}
