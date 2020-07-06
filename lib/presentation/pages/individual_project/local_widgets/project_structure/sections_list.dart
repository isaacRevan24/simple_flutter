import 'package:flutter/material.dart';

class SectionList extends StatelessWidget {
  // final List<Widget> sectionsName;

  // SectionList({@required this.sectionsName});
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
            // max 5 manager
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) => Card(
              child: FlutterLogo(size: 50),
            ),
          ),
        ),
      ),
    );
  }
}
