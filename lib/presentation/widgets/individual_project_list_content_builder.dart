import 'package:flutter/material.dart';
import 'package:simple_flutter/presentation/pages/individual_project/local_widgets/project_info_header_scroll.dart';
import 'package:simple_flutter/presentation/pages/individual_project/local_widgets/project_info_managers_presentation.dart';

class ProjectListContent extends StatelessWidget {
  // TODO: Lista de testeo, remover cuando termine ui
  final List<Widget> innerContent = [
    ProjecInfotHeader(),
    ManagerInfoPresentation(),
    Container(
      height: 50,
      child: Center(child: Text('final')),
    )
  ];
  final ScrollController scrollController;
  final int listSize = 3;

  ProjectListContent({
    @required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      controller: scrollController,
      itemCount: listSize,
      itemBuilder: (BuildContext context, int index) {
        // Number 0 is the header and the last one is the footer
        if (index == 0) {
          return innerContent.first;
        } else if (index == listSize - 1) {
          return innerContent.last;
        } else {
          return innerContent[index];
        }
      },
    );
  }
}
