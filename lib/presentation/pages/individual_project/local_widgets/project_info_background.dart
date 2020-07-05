import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProjectInfoBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FractionallySizedBox(
        heightFactor: 0.4,
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ProjectLogo(),
              ProjectInfoPercentBar(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlutterLogo(
          size: 100,
        ),
      ),
    );
  }
}

class ProjectInfoPercentBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: LinearPercentIndicator(
        animation: true,
        lineHeight: 20.0,
        animationDuration: 1000,
        percent: 0.8,
        center: Text("80.0%"),
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: Colors.green,
      ),
    );
  }
}

// TODO: Cargar una imagen donde va el logo
