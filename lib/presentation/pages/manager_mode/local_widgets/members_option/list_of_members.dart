import 'package:flutter/material.dart';

/*
Se despligega la lista de miembros del proyecto, al tocar la carta de la persona saldra para 
agregar como amigo si no lo tiene agregado.
*/

// Miembros lista de test
const List<String> members = [
  "Arlette",
  "isaac",
  "Mabelis",
  "rosa",
  "isaac",
  "Mabelis",
  "rosa"
];

class ListOfMembers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 275,
      child: GridView.count(
        crossAxisCount: 3,
        children: List.generate(members.length, (index) {
          return GestureDetector(
            onTap: () => print('Seleccionado ${members[index]}'),
            child: Card(
              child: GridTile(
                footer: Center(
                  child: Text('${members[index]}'),
                ),
                child: Icon(
                  Icons.add_comment,
                  size: 70,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

// TODO: Hacer que cuando toquen el card del usuario salga la opción de agregar como amigo.
