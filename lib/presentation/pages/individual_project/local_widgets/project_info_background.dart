import 'package:flutter/material.dart';
import 'project_info_percent_bar.dart';

class ProjectInfoBackground extends StatelessWidget {
  final String direction = '/images/space.jpg';
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
              Container(
                child: Center(
                  child: FlutterLogo(
                    size: 100,
                  ),
                ),
              ),
              ProjectInfoPercentBar(),
            ],
          ),
        ),
      ),
    );
  }
}

// TODO: Cargar una imagen donde va el logo
