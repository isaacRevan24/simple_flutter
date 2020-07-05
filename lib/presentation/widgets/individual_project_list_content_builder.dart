import 'package:flutter/material.dart';

class ProjectListContent extends StatelessWidget {
  final List<Widget> innerContent;
  final ScrollController scrollController;

  ProjectListContent({
    @required this.scrollController,
    @required this.innerContent,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: innerContent,
      ),
    );
  }
}

// TODO: Agregar un controlador para manajar los widgets
