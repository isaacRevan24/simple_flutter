import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HeroSectionInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _sectionDetailAppbar(context),
        body: _sectionDetails(),
      ),
    );
  }

  Container _sectionDetails() {
    return Container(
      color: Colors.white,
      child: Center(
        child: FractionallySizedBox(
          widthFactor: 0.8,
          heightFactor: 0.75,
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.white,
                  child: LinearPercentIndicator(
                    lineHeight: 20.0,
                    percent: 0.8,
                    center: Text("80.0%"),
                    linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: Colors.green,
                  ),
                ),
              ),
              Flexible(
                flex: 8,
                child: Container(
                  color: Colors.blue,
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Text('data'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _sectionDetailAppbar(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      title: Text(
        'Section name',
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
}
