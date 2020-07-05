import 'package:flutter/material.dart';
import 'package:simple_flutter/presentation/pages/individual_project/local_widgets/project_info_header_scrol.dart';

class ProjectListContent extends StatelessWidget {
  // final List<Widget> innerContent;
  final ScrollController scrollController;
  final int listSize = 25;

  ProjectListContent({@required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      controller: scrollController,
      itemCount: listSize,
      itemBuilder: (BuildContext context, int index) {
        // Number 0 is the header and the last one is the footer
        if (index == 0) {
          return ProjecInfotHeader();
        } else if (index == listSize - 1) {
          return Container(
            height: 50,
            child: Center(child: Text('final')),
          );
        } else {
          return ListTile(title: Text('Item $index'));
        }
      },
    );
  }
}
