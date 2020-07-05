import 'package:flutter/material.dart';

class ProjectListContent extends StatelessWidget {
  final ScrollController scrollController;
  final int listSize = 25;

  ProjectListContent({@required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      itemCount: listSize,
      itemBuilder: (BuildContext context, int index) {
        // Number 0 is the header and the lastone is the footer
        if (index == 0) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
            ),
            height: 50,
            child: Center(child: Text('titulo')),
          );
        } else if (index == listSize - 1) {
          return Container(
            height: 50,
            color: Colors.blue,
            child: Center(child: Text('final')),
          );
        } else {
          return ListTile(title: Text('Item $index'));
        }
      },
    );
  }
}
