import 'package:flutter/material.dart';
import 'package:simple_flutter/presentation/widgets/percent_circular_bar.dart';

class SectionList extends StatelessWidget {
  final List<String> sectionsName;

  SectionList({@required this.sectionsName});
  @override
  Widget build(BuildContext context) {
    return SectionsListBuilding(sectionsName: sectionsName);
  }
}

class SectionsListBuilding extends StatelessWidget {
  const SectionsListBuilding({
    @required this.sectionsName,
  });

  final List<String> sectionsName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 293, minHeight: 25),
        child: Container(
          width: double.infinity,
          child: ListView.builder(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: sectionsName.length,
            itemBuilder: (BuildContext context, int index) => SectionCard(
              sectionsName: sectionsName,
              index: index,
            ),
          ),
        ),
      ),
    );
  }
}

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

// TODO: Agregar un indicador de scroll para indicar cuando hay mas de 4 items
