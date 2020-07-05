import 'package:flutter/material.dart';
import 'package:simple_flutter/presentation/widgets/individual_project_list_content_builder.dart';

const BoxDecoration roundedConentAreaDecoration = BoxDecoration(
    color: Colors.blueGrey,
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(40),
      topLeft: Radius.circular(40),
    ));

class ProjectLevelsLayout extends StatelessWidget {
  final List<Widget> projectLevelsContent;

  ProjectLevelsLayout(this.projectLevelsContent);
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.7,
        builder: (
          BuildContext context,
          ScrollController scrollController,
        ) {
          return Container(
            decoration: roundedConentAreaDecoration,
            child: ProjectListContent(
              scrollController: scrollController,
              innerContent: projectLevelsContent,
            ),
          );
        },
      ),
    );
  }
}

// funcion local para testear el layout de info project

// TODO: Eliminar esta funcion de testin
// TODO: La animación de los items de la lista se ven en el background, hacer que se termine su animación en la curva
// TODO: Refactor esta pagina
// TODO: Arreglar el color azul que se ve mal en contraste del fondo
