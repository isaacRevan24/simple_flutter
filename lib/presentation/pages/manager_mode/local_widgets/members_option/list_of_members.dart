import 'package:flutter/material.dart';

// Miembros lista de test
const List<String> members = ["Arlette", "isaac", "Mabelis"];

class ListOfMembers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView.count(
        crossAxisCount: 3,
        children: List.generate(members.length, (index) {
          return GestureDetector(
            onTap: () => print('Seleccionado ${members[index]}'),
            child: Card(
              color: Colors.indigo,
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
