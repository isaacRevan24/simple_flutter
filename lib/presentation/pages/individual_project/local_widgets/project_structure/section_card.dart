import 'package:flutter/material.dart';
import 'package:simple_flutter/presentation/widgets/percent_circular_bar.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({
    @required this.sectionsName,
    @required this.index,
  });

  final List<String> sectionsName;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: EdgeInsets.all(5),
        leading: GeneralProjectIndicator(),
        title: Text('${sectionsName[index]}'),
        onTap: () => {},
      ),
    );
  }
}
