import 'package:flutter/material.dart';
import 'package:saude/components/circle_buttom.dart';
import 'package:saude/ultilities/color_palette.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get childrenDelegate => null;

  @override
  Widget build(BuildContext context) {
    ScrollController _slidingBar = ScrollController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text(
          "SIGTS",
          style: TextStyle(
            color: ColorsPalette.facebookBlue,
            fontWeight: FontWeight.bold,
            fontSize: 28,
            letterSpacing: -1.2,
          ),
        ),
        actions: [
          CircleButtom(
            buttomLength: 115,
            buttomText: "Relatório",
            onPressed: () {
              debugPrint('Botão de Relatório funcionando');
            },
          ),
        ],
      ),
      backgroundColor: Colors.grey[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // AreaCriarPostagem(usuario: usuarioAtual),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'PASSAGENS',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: const SelectableText(
                    '18/01/2022',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),
          ),
          const Divider(thickness: 1),
          Scrollbar(
            controller: _slidingBar,
            scrollbarOrientation: ScrollbarOrientation.top,
            showTrackOnHover: true,
            isAlwaysShown: true,
            child: SingleChildScrollView(
              controller: _slidingBar,
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(
                          width: 100,
                          child: SelectableText(
                            'Nº Vaga',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 300,
                          child: SelectableText(
                            'Nome',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 300,
                          child: SelectableText(
                            'Procedimento',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 300,
                          child: SelectableText(
                            'Destino',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          width: 100,
                          child: SelectableText(
                            'Ida/Volta',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      //     SliverToBoxAdapter(
      //       child: AreaCriarPostagem(usuario: usuarioAtual),
      //     ),
      //     //! Lista de passagens
      //     SliverToBoxAdapter(
      //       child: DataTable(
      //         columns: const [
      //           DataColumn(
      //               label: Text('Nº Vaga', overflow: TextOverflow.ellipsis),
      //               numeric: true),
      //           DataColumn(
      //               label: Text('Nome', overflow: TextOverflow.ellipsis)),
      //           DataColumn(
      //               label:
      //                   Text('Procedimento', overflow: TextOverflow.ellipsis)),
      //           DataColumn(
      //               label: Text('Destino', overflow: TextOverflow.ellipsis)),
      //           DataColumn(
      //               label: Text('Ida/Volta', overflow: TextOverflow.ellipsis)),
      //         ],
      //         rows: const [
      //           DataRow(
      //             cells: [
      //               DataCell(Text('1')),
      //               DataCell(Text('Breno Italo da Silva Fonseca')),
      //               DataCell(Text('Teste de covid')),
      //               DataCell(Text('Assu')),
      //               DataCell(Text('Ida')),
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
