import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({
    Key key,
    @required this.sectionsName,
    @required this.index,
  }) : super(key: key);

  final List<String> sectionsName;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text('${sectionsName[index]}'),
      ),
    );
  }
}
