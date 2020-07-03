import 'package:flutter/material.dart';
import 'local_widgets/page_view_individual_project.dart';
import 'local_widgets/app_bar.dart';

class IndividualProject extends StatelessWidget {
  const IndividualProject({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildIndividualProjectAppBar(context),
        body: IndividualProjectPageView(),
      ),
    );
  }
}

// TODO: Hacer un bottom con prefered size con TabPageSelector que muestre la posición del usuario en las 3 paginas
// TODO: Hacer una función de estado que comunique el nombre de la pagina y la posición del PageView al app bar.
