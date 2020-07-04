import 'package:flutter/material.dart';

class ProjectLevelsLayout extends StatelessWidget {
  const ProjectLevelsLayout({
    Key key,
  }) : super(key: key);

  final int listSize = 25;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.7,
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
            ),
            child: ListView.builder(
              controller: scrollController,
              itemCount: listSize,
              itemBuilder: (BuildContext context, int index) {
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
            ),
          );
        },
      ),
    );
  }
}

// TODO: La animación de los items de la lista se ven en el background, hacer que se termine su animación en la curva
// TODO: Refactor esta pagina
// TODO: Arreglar el color azul que se ve mal en contraste del fondo
