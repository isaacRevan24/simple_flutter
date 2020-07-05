import 'package:flutter/material.dart';
import 'package:simple_flutter/presentation/pages/individual_project/local_widgets/project_info/header_scroll.dart';
import 'package:simple_flutter/presentation/pages/individual_project/local_widgets/project_info/managers_list.dart';
import 'package:simple_flutter/presentation/pages/individual_project/local_widgets/project_info/members_list.dart';

class ProjectListContent extends StatelessWidget {
  // final List<Widget> innerContent = [];
  final ScrollController scrollController;

  ProjectListContent({
    @required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ProjecInfotHeader(),
          ManagerListCard(),
          MembersListCard(),
        ],
      ),
    );
  }
}

// TODO: Agregar un controlador para manajar los widgets
