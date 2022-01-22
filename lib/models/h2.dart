import 'package:flutter/material.dart';
import 'package:saude/components/area_criar_postagem.dart';
import 'package:saude/dados/dados.dart';
import 'package:saude/ultilities/color_palette.dart';

class H2 extends StatelessWidget {
  const H2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AreaCriarPostagem(usuario: usuarioAtual),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 32, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'PASSAGENS',
                style: TextStyle(
                    color: ColorsPalette.brenoOrange,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: const SelectableText(
                  '18/01/2022', //todo: Pegar data dinâmica
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
