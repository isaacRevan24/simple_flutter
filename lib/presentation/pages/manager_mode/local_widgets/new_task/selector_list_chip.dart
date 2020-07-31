import 'package:flutter/material.dart';

class SelectorList extends StatefulWidget {
  final List<String> members;
  const SelectorList({this.members});
  @override
  _SelectorListState createState() => _SelectorListState();
}

class _SelectorListState extends State<SelectorList> {
  List<String> _inCharge = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        /// Boton que muestra las opciones de tags disponibles.

        /// Boton que te muestra un dialogBox con los nombres de los miebros para escoger
        FlatButton(
          color: Colors.grey,
          onPressed: () {
            _selectMember();
          },
          child: Text('Seleccionar encargado'),
        ),

        /// Lista de chips de miembros a cargo de la tarea que se puede scrolear horizontalmente si se
        /// pasa del tamaño
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 40),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _inCharge.length,
            itemBuilder: (BuildContext context, int index) {
              return _inChargeMemberChip(index);
            },
          ),
        ),
      ],
    );
  }

  /// Metodo para crear el dialog box
  Future<void> _selectMember() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: const Text('Select member'),
          children: _membersDialogOptions(context),
        );
      },
    );
  }

  /// Crea una lista de miembros disponibles para seleccionar y al elegir uno se elimina de la lista _members y se
  /// agrega a la lista _inCharge para mostrar como chips
  List<Widget> _membersDialogOptions(BuildContext context) {
    List<Widget> options = [];
    for (var i = 0; i <= widget.members.length - 1; i++) {
      options.add(
        SimpleDialogOption(
          onPressed: () {
            setState(() {
              _inCharge.add(widget.members[i]);
              widget.members.remove(widget.members[i]);
            });
            Navigator.pop(context);
          },
          child: Text(widget.members[i]),
        ),
      );
    }
    return options;
  }

  /// Crea una lista de chips que se muestran con el o los miembros seleccionados para la tarea. El chip tiene una x
  /// para eliminar el miembro y cuando se toca remueve el chip de la pantalla y remueve el miembro de _inCharge y lo
  /// vuelve a ingresar a _members para que se muestre como opción a escoger.
  Container _inChargeMemberChip(int index) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: 60),
        child: Chip(
          avatar: CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            // child: Text('AB'),
          ),
          label: Text(
            _inCharge[index],
            style: TextStyle(fontSize: 12),
          ),
          deleteIcon: Icon(
            Icons.cancel,
          ),
          deleteIconColor: Colors.red,
          // Al tocar el icono rojo se elimina el chip.
          onDeleted: () {
            setState(() {
              widget.members.add(_inCharge[index]);
              _inCharge.remove(_inCharge[index]);
            });
          },
        ),
      ),
    );
  }
}

// TODO: Cambiar nombre de clase stf
