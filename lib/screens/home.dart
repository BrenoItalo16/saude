import 'package:flutter/material.dart';
import 'package:saude/components/area_criar_postagem.dart';
import 'package:saude/components/circle_buttom.dart';
import 'package:saude/components/post_list.dart';
import 'package:saude/dados/dados.dart';
import 'package:saude/models/modelos.dart';
import 'package:saude/ultilities/color_palette.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            //expandedHeight: 250,
            floating: true,
            centerTitle: false,
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
          SliverToBoxAdapter(
            child: AreaCriarPostagem(usuario: usuarioAtual),
          ),
          // const SliverPadding(
          //   padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
          //   sliver: SliverToBoxAdapter(
          //       // child: PassageArea(),//todo: PassageArea
          //       ),
          // ),
          //*Sliver
          // SliverPadding(
          //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
          //   sliver: SliverToBoxAdapter(
          //     child: AreaEstoria(
          //       usuario: usuarioAtual,
          //       estorias: estorias,
          //     ),
          //   ),
          // ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                Paciente paciente = pacientes[index];
                return PostList(paciente: paciente);
              }, //todo: Continuar daqui
              childCount: pacientes.length,
            ),
          ),
        ],
      ),
    );
  }
}
