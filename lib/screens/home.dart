import 'package:flutter/material.dart';
import 'package:saude/components/area_criar_postagem.dart';
import 'package:saude/components/circle_buttom.dart';
import 'package:saude/components/passage_list.dart';
import 'package:saude/components/h2.dart';
import 'package:saude/models/modelos.dart';
import 'package:saude/models/procedimentos_manager.dart';
import 'package:saude/ultilities/color_palette.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Passagem> listaDePacientes = [
    Passagem(
      numeroVaga: 1,
      nome: 'Maria das Neves',
      procedimento: 'Repor o caneco',
      destino: 'Lá o longe de Assu',
      ida: true,
      volta: true,
    ),
    Passagem(
      numeroVaga: 1,
      nome: 'Breno Italo',
      procedimento: 'Comer cuscuz',
      destino: 'Lá em Natal',
      ida: true,
      volta: false,
    ),
    Passagem(
      numeroVaga: 1,
      nome: 'Raylan Brayan',
      procedimento: 'Comer linguiça',
      destino: 'Lá em Japiaçu',
      ida: false,
      volta: true,
    ),
  ];
  get childrenDelegate => null;

  @override
  Widget build(BuildContext context) {
    // ScrollController _slidingBar = ScrollController();
    return Scaffold(
      backgroundColor: Colors.grey[350],
      // body: Container(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
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
                  ProcedimentosManager(); //!Edite aqui para testa o model
                },
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 2,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[400],
            ),
          ),
          const SliverToBoxAdapter(
            child: AreaCriarPostagem(),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                // color: Colors.grey[300]
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.grey[200],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const H2(),
                    //todo: Inserir DataTable() aqui
                    SizedBox(
                        width: double.infinity,
                        child: PassageList(
                          passagens: listaDePacientes,
                        ) //Todo Inserir tabela aqui
                        ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.transparent,
              height: 2000,
            ),
          )
        ],
      ),
    );
  }
}
