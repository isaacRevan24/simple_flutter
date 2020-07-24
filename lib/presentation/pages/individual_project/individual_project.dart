import 'package:flutter/material.dart';
import 'local_widgets/page_view_individual_project.dart';

class IndividualProject extends StatelessWidget {
  const IndividualProject({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildIndividualProjectAppBar(context),
        body: IndividualProjectPageView(),
      ),
    );
  }
}

AppBar buildIndividualProjectAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      color: Colors.black,
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () => Navigator.of(context).pop(),
    ),
    centerTitle: true,
    title: Text(
      "Project name",
      style: TextStyle(color: Colors.black),
    ),
  );
}
// TODO: Hacer un bottom con prefered size con TabPageSelector que muestre la posición del usuario en las 3 paginas
// TODO: Hacer una función de estado que comunique el nombre de la pagina y la posición del PageView al app bar.
