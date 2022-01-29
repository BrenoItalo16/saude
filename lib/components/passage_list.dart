import 'package:flutter/material.dart';
import 'package:saude/models/modelos.dart';
// import 'package:saude/models/paciente_manager.dart';

class PassageList extends StatelessWidget {
  final List<Passagem> passagens;
  // final List<PacienteManager> pacienteManager;
  const PassageList({
    Key? key,
    // required this.pacienteManager,
    required this.passagens,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(
            label: Text('Nº vaga',
                style: TextStyle(fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis)),
        DataColumn(
            label: Text('Nome',
                style: TextStyle(fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis)),
        DataColumn(
            label: Text('Procedimento',
                style: TextStyle(fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis)),
        DataColumn(
            label: Text('Destino',
                style: TextStyle(fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis)),
        DataColumn(
            label: Text('Ida/Volta',
                style: TextStyle(fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis)),
      ],
      //Todo: Inserir as linhas dinamicamente
      rows: passagens
          .map<DataRow>(
            (element) => DataRow(
              cells: [
                DataCell(Text(element.numeroVaga.toString())),
                DataCell(Text(element.nome)),
                DataCell(Text(element.procedimento)),
                DataCell(Text(element.destino)),
                if (element.ida == true && element.volta == true)
                  const DataCell(Text('Ida e volta'))
                else if (element.ida == true && element.volta == false)
                  const DataCell(Text('Ida'))
                else if (element.ida == false && element.volta == true)
                  const DataCell(Text('Volta'))
                else
                  const DataCell(Text('Não vai, nem volta'))
              ],
            ),
          )
          .toList(),
    );
  }
}
