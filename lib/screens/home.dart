import 'package:flutter/material.dart';
import 'package:saude/components/circle_buttom.dart';
import 'package:saude/models/paciente_manager.dart';
// import 'package:saude/components/passage_list.dart';
// import 'package:saude/dados/dados.dart';
// import 'package:saude/models/h2.dart';
// import 'package:saude/models/header.dart';
// import 'package:saude/models/modelos.dart';
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
    // ScrollController _slidingBar = ScrollController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        shadowColor: Colors.black,
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
              PacienteManager();
            },
          ),
        ],
      ),
      body: Container(),
      // body: Container(
      //   color: Colors.grey[300],
      //   child: SizedBox(
      //     height: (passagens.length * 30) + 100,
      //     child: ListView(
      //       shrinkWrap: true,
      //       children: [
      //         const H2(),
      //         //! Horizontal Scrolling
      //         Scrollbar(
      //           scrollbarOrientation: ScrollbarOrientation.top,
      //           // isAlwaysShown: true,
      //           child: SizedBox(
      //             height: passagens.length * 30,
      //             child: ListView(
      //               scrollDirection: Axis.horizontal,
      //               shrinkWrap: true,
      //               children: [
      //                 const Header(),
      //                 SizedBox(
      //                   height: passagens.length * 30,
      //                   child: ListView.builder(
      //                     physics:
      //                         const NeverScrollableScrollPhysics(), //!Desativa o scroll
      //                     // shrinkWrap: true,
      //                     // scrollDirection: Axis.vertical,
      //                     itemBuilder: (_, index) {
      //                       Passagem passagem = passagens[index];
      //                       return PassageList(passagens: passagem);
      //                     },
      //                     itemCount: passagens.length,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      //   // controller: _slidingBar,
      //   // scrollDirection: Axis.vertical,
      //   // slivers: [
      //   // SliverAppBar(
      //   //   backgroundColor: Colors.grey[200],
      //   //   shadowColor: Colors.black,
      //   //   floating: true,
      //   //   title: const Text(
      //   //     "SIGTS",
      //   //     style: TextStyle(
      //   //       color: ColorsPalette.facebookBlue,
      //   //       fontWeight: FontWeight.bold,
      //   //       fontSize: 28,
      //   //       letterSpacing: -1.2,
      //   //     ),
      //   //   ),
      //   //   actions: [
      //   //     CircleButtom(
      //   //       buttomLength: 115,
      //   //       buttomText: "Relatório",
      //   //       onPressed: () {
      //   //         debugPrint('Botão de Relatório funcionando');
      //   //       },
      //   //     ),
      //   //   ],
      //   // ),
      //   // SliverToBoxAdapter(
      //   //   child: Container(
      //   //     color: Colors.grey[300],
      //   //     child: Column(
      //   //       children: [
      //   //         AreaCriarPostagem(usuario: usuarioAtual),
      //   //         Padding(
      //   //           padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
      //   //           child: Row(
      //   //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   //             children: [
      //   //               const Text(
      //   //                 'PASSAGENS',
      //   //                 style: TextStyle(
      //   //                     color: Colors.black,
      //   //                     fontSize: 18,
      //   //                     fontWeight: FontWeight.bold),
      //   //               ),
      //   //               TextButton(
      //   //                 onPressed: () {},
      //   //                 child: const SelectableText(
      //   //                   '18/01/2022', //todo: Pegar data dinâmica
      //   //                   style: TextStyle(
      //   //                     color: Colors.black,
      //   //                     fontSize: 14,
      //   //                   ),
      //   //                 ),
      //   //               )
      //   //             ],
      //   //           ),
      //   //         ),
      //   //       ],
      //   //     ),
      //   //   ),
      //   // ),
      //   //!
      //   // SliverList(
      //   //   delegate: SliverChildListDelegate(
      //   //     [
      //   //       const Header(), //*Títulos das colunas

      //   //       SizedBox(
      //   //         height: (passagens.length) *
      //   //             30, //! O tamanho da Caixa com a lista é exatamento o tamanho da lista | Quantidade de linhas vezes a altura da linha
      //   //         child: ListView.builder(
      //   //           controller: _slidingBar,
      //   //           scrollDirection: Axis.horizontal,
      //   //           itemBuilder: (context, index) {
      //   //             Passagem passagem = passagens[index];
      //   //             return PassageList(passagens: passagem);
      //   //           },
      //   //           itemCount: passagens.length,
      //   //         ),
      //   //       ),
      //   //       // SliverList(
      //   //       //   delegate: SliverChildBuilderDelegate(
      //   //       //     (context, index) {
      //   //       //       Passagem passagem = passagens[index];
      //   //       //       return PassageList(passagens: passagem);
      //   //       //     },
      //   //       //     childCount: passagens.length,
      //   //       //   ),
      //   //       // ),
      //   //     ],
      //   //   ),
      //   // ),
      //   // ],
      // ),
    );
  }
}
