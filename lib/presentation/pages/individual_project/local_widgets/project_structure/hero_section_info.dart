import 'package:flutter/material.dart';

class HeroSectionInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            'Section detail',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.white,
          child: _sectionDetails(),
        ),
      ),
    );
  }

  Center _sectionDetails() {
    return Center(
      child: FractionallySizedBox(
        widthFactor: 0.8,
        heightFactor: 0.75,
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.brown,
              ),
            ),
            Flexible(
              flex: 8,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
