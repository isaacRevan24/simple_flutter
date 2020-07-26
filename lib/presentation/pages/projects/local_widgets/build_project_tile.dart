import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../widgets/percent_circular_bar.dart';
import '../../individual_project/individual_project.dart';
import '../../manager_mode/manager_mode.dart';

class BuildProjectTile extends StatelessWidget {
  final int index;
  final List<String> entries;
  BuildProjectTile({this.index, this.entries});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        leading: FlutterLogo(
          size: 70,
        ),
        title: Text('Project number ${entries[index]}'),
        subtitle: Text('Last update -> 66/66/6666'),
        trailing: GeneralProjectIndicator(),
        onLongPress: () {
          Navigator.push(
            context,
            PageTransition(
              duration: Duration(milliseconds: 200),
              type: PageTransitionType.rightToLeft,
              child: ManagerMode(),
            ),
          );
        },
        onTap: () {
          Navigator.push(
            context,
            PageTransition(
              duration: Duration(milliseconds: 200),
              type: PageTransitionType.rightToLeft,
              child: IndividualProject(),
            ),
          );
        },
      ),
    );
  }
}

// TODO: Ver como meter imagenes donde va el logo
