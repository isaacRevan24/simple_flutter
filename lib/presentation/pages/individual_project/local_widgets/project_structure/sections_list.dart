import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';

import '../../../../widgets/percent_circular_bar.dart';
import 'hero_section_info.dart';

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
      padding: const EdgeInsets.symmetric(vertical: 10),
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
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      curve: Curves.easeIn,
      child: Card(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              PageTransition(
                duration: Duration(milliseconds: 200),
                type: PageTransitionType.downToUp,
                child: HeroSectionInfo(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GeneralProjectIndicator(),
                SizedBox(
                  width: 60,
                  child: Center(child: Text('${sectionsName[index]}')),
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.done_outline,
                      color: Colors.green,
                    ),
                    Text('20'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.pause_circle_outline,
                      color: Colors.grey,
                    ),
                    Text('9'),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(
                      Icons.clear_all,
                      color: Colors.grey,
                    ),
                    Text('29'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// TODO: Agregar un indicador de scroll para indicar cuando hay mas de 4 items
