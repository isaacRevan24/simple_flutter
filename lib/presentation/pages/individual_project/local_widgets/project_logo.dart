import 'package:flutter/material.dart';

class ProjectLogo extends StatelessWidget {
  const ProjectLogo({
    Key key,
  }) : super(key: key);

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
