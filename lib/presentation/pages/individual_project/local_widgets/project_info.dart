import 'package:flutter/material.dart';

import 'project_levels_layout.dart';
import 'project_info/background.dart';

import 'project_info/header_scroll.dart';
import 'project_info/managers_list.dart';
import 'project_info/members_list.dart';

class ProjectInfo extends StatelessWidget {
  final List<Widget> innerContent = <Widget>[
    ProjecInfotHeader(),
    ManagerListCard(),
    MembersListCard(),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProjectInfoBackground(),
        ProjectLevelsLayout(innerContent),
      ],
    );
  }
}
