import 'package:flutter/material.dart';
import 'package:saude/models/modelos.dart';

class PostList extends StatelessWidget {
  final Paciente paciente;
  const PostList({
    Key? key,
    required this.paciente,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(label: Text('Nº Vaga')),
        DataColumn(label: Text('Nome')),
      ],
      rows: [
        DataRow(
          cells: [
            DataCell(Text(paciente.idade.toString())),
            DataCell(Text(paciente.nome)),
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text(paciente.idade.toString())),
            DataCell(Text(paciente.nome)),
          ],
        ),
      ],
    );
    // Container(
    //   width: 100,
    //   child: Text(paciente.nome),
    // );
  }
}
