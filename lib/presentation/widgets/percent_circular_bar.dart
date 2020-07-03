import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class GeneralProjectIndicator extends StatefulWidget {
  @override
  _GeneralProjectIndicatorState createState() =>
      _GeneralProjectIndicatorState();
}

class _GeneralProjectIndicatorState extends State<GeneralProjectIndicator> {
  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      animation: true,
      animationDuration: 1200,
      radius: 52.0,
      lineWidth: 4.0,
      percent: 0.90,
      center: Text("90%"),
      progressColor: Colors.green,
    );
  }
}
