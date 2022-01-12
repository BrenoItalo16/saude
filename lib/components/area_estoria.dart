import 'package:flutter/material.dart';
import 'package:saude/components/story_card.dart';
import 'package:saude/dados/dados.dart';
import 'package:saude/models/modelos.dart';

class AreaEstoria extends StatelessWidget {
  final Usuario usuario;
  final List<Estoria> estorias;
  const AreaEstoria({
    Key? key,
    required this.usuario,
    required this.estorias,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.grey[200],
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        scrollDirection: Axis.horizontal, //!Lista horizontal
        itemCount: 1 + estorias.length, //1+8 = 9
        itemBuilder: (context, indice) {
          if (indice == 0) {
            Estoria estoriaUsuario = Estoria(
              usuario: usuarioAtual,
              urlImagem: usuarioAtual.urlImagem,
            );

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: StoryCard(
                adicionarEstoria: true,
                estoria: estoriaUsuario,
              ),
            );
          }

          // ignore: unused_local_variable
          Estoria estoria = estorias[indice - 1];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: StoryCard(
              estoria: estoria,
            ),
          );
        },
      ),
    );
  }
}
