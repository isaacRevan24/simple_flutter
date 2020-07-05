import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProjectInfoPercentBar extends StatelessWidget {
  const ProjectInfoPercentBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: LinearPercentIndicator(
        animation: true,
        lineHeight: 20.0,
        animationDuration: 500,
        percent: 0.8,
        center: Text("80.0%"),
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: Colors.green,
      ),
    );
  }
}
