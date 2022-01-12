import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:saude/components/imagem_perfil.dart';
import 'package:saude/models/modelos.dart';
import 'package:saude/ultilities/color_palette.dart';

class StoryCard extends StatelessWidget {
  final Estoria estoria;
  final bool adicionarEstoria;

  const StoryCard({
    Key? key,
    required this.estoria,
    this.adicionarEstoria = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: CachedNetworkImage(
            imageUrl: estoria.urlImagem,
            height: double.infinity,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
            gradient: ColorsPalette.degradeEstoria,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        Positioned(
          top: 8,
          left: 8,
          child: adicionarEstoria
              ? Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(LineIcons.plus),
                    iconSize: 30,
                    color: ColorsPalette.facebookBlue,
                    onPressed: () {},
                  ),
                )
              : ImagemPerfil(
                  urlImagem: estoria.usuario.urlImagem,
                  foiVisualizado: estoria.foiVisualizado,
                ),
        ),
        // Positioned(
        //   bottom: 8,
        //   left: 8,
        //   right: 8,
        //   child: Text(
        //     adicionarEstoria ? "Adicionar novo carro" : estoria.usuario.nome,
        //     style: const TextStyle(
        //       color: Colors.white,
        //       fontWeight: FontWeight.bold,
        //     ),
        //     maxLines: 2,
        //     overflow: TextOverflow.ellipsis,
        //   ),
        // )
      ],
    );
  }
}
