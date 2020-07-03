import 'package:flutter/material.dart';
import 'project_info.dart';
import 'project_progress.dart';
import 'project_structure.dart';

class IndividualProjectPageView extends StatefulWidget {
  @override
  _IndividualProjectPageViewState createState() =>
      _IndividualProjectPageViewState();
}

class _IndividualProjectPageViewState extends State<IndividualProjectPageView> {
  PageController _controller = PageController(
    initialPage: 1,
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: <Widget>[ProjectStructure(), ProjectInfo(), ProjectProgress()],
    );
  }
}
