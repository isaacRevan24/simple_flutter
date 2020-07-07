import 'package:flutter/material.dart';

/// SectionsTable muesta una table donde muestra el nombre de la
/// sección con el número de tareas pendientes y realizadas
class SectionsTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.white,
          child: DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Text(
                  'Secciones',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Realizadas',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              DataColumn(
                label: Text(
                  'Pendientes',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
            rows: const <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Backend')),
                  DataCell(Text('10')),
                  DataCell(Text('20')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Frontend')),
                  DataCell(Text('25')),
                  DataCell(Text('5')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Bd')),
                  DataCell(Text('5')),
                  DataCell(Text('30')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Negocos')),
                  DataCell(Text('6')),
                  DataCell(Text('10')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Marketing')),
                  DataCell(Text('2')),
                  DataCell(Text('20')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// TODO: Agregar un fractionallySizeBox para la tabla.
